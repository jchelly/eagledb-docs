#!/usr/bin/env python3
"""
Parse EAGLE database documentation (index.xml + JSP HTML fragments) and
emit a CSV of table/column metadata suitable for importing into a new
web interface's metadata table.

Output columns:
    db_group          - top-level database group (fiducial_models, physics_vars, dmonly)
    table_name        - canonical SQL table name from index.xml page title
    table_description - plain-text description of the table (first <p> in the JSP)
    column_name       - SQL column name
    units             - units string (HTML tags stripped)
    description       - column description (HTML tags stripped)
    units_html        - units with original HTML markup (e.g. M<sub>⊙</sub>)
    description_html  - description with original HTML markup

Usage:
    python3 parse_docs.py [--output metadata.csv]

Vector component handling:
    Triplets like CentreOfMass_x / _y / _z are stored in the source with
    units only on the _y row and the description only on the _z row.
    This script propagates both to all three components.

Template column handling:
    The SubHalo table describes a set of columns that exist with three
    prefixes (SF_, NSF_, Stars_). These are kept as-is in the second
    <table> block (i.e. the column_name will be e.g. "SF_Mass") — the
    script expands them by reading the prose note that precedes the block.
"""

import argparse
import csv
import re
import sys
import xml.etree.ElementTree as ET
from pathlib import Path
from bs4 import BeautifulSoup


DOCS_ROOT = Path(__file__).parent
INDEX_XML = DOCS_ROOT / "index.xml"

# Namespace used in index.xml
NS = {"pi": "http://www.g-vo.org/PageIndex/"}

# Suffixes that indicate a vector component row
VECTOR_SUFFIXES = ("_x", "_y", "_z")

# Prefixes used in the template component section of SubHalo tables
COMPONENT_PREFIXES = ("SF", "NSF", "Stars")


def html_to_plain(html_str):
    """Strip HTML tags and normalise whitespace."""
    if not html_str:
        return ""
    soup = BeautifulSoup(html_str, "html.parser")
    return re.sub(r"\s+", " ", soup.get_text()).strip()


def inner_html(tag):
    """Return the inner HTML of a BeautifulSoup tag as a string."""
    return "".join(str(c) for c in tag.children).strip()


def cell_content(td):
    """Return (html, plain) text from a table cell <td>."""
    p = td.find("p")
    if p:
        h = inner_html(p)
        return h, html_to_plain(h)
    h = inner_html(td)
    return h, html_to_plain(h)


def base_name(field):
    """Strip _x / _y / _z suffix if present, else return field unchanged."""
    for suf in VECTOR_SUFFIXES:
        if field.endswith(suf):
            return field[: -len(suf)]
    return None  # not a vector component


def propagate_vector_groups(rows):
    """
    rows: list of dicts with keys field, units_html, units, desc_html, desc.

    Consecutive rows whose field names share a common base (strip _x/_y/_z)
    are treated as a vector group.  Within each group the non-empty units
    and non-empty description are propagated to all members.
    """
    i = 0
    while i < len(rows):
        b = base_name(rows[i]["field"])
        if b is None:
            i += 1
            continue
        # Collect consecutive rows that belong to the same vector group
        j = i + 1
        while j < len(rows) and base_name(rows[j]["field"]) == b:
            j += 1
        group = rows[i:j]

        # Find the canonical units and description within the group
        units_html = next((r["units_html"] for r in group if r["units_html"]), "")
        units = next((r["units"] for r in group if r["units"]), "")
        desc_html = next((r["desc_html"] for r in group if r["desc_html"]), "")
        desc = next((r["desc"] for r in group if r["desc"]), "")

        for r in group:
            r["units_html"] = units_html
            r["units"] = units
            r["desc_html"] = desc_html
            r["desc"] = desc

        i = j


def parse_jsp(path, component_prefixes=None):
    """
    Parse one JSP file and return (table_description_plain, rows).

    rows is a list of dicts:
        field, units_html, units, desc_html, desc

    component_prefixes: if not None, the columns in a second <table> block
    will be expanded with each of these prefixes (e.g. SF_, NSF_, Stars_).
    """
    text = path.read_text(encoding="utf-8", errors="replace")
    soup = BeautifulSoup(text, "html.parser")

    # Table description: first <p> that is NOT inside a <table>
    table_desc_html = ""
    for tag in soup.children:
        if hasattr(tag, "name") and tag.name == "p":
            table_desc_html = inner_html(tag)
            break
    table_desc = html_to_plain(table_desc_html)

    tables = soup.find_all("table")
    all_rows = []

    for t_idx, table in enumerate(tables):
        rows_in_table = []
        for tr in table.find_all("tr"):
            tds = tr.find_all("td")
            if len(tds) < 3:
                continue  # header row
            field_h, field = cell_content(tds[0])
            units_h, units = cell_content(tds[1])
            desc_h, desc = cell_content(tds[2])
            if not field:
                continue
            rows_in_table.append(
                dict(
                    field=field,
                    units_html=units_h,
                    units=units,
                    desc_html=desc_h,
                    desc=desc,
                )
            )

        propagate_vector_groups(rows_in_table)

        # If this is the template component block, expand with prefixes
        if t_idx > 0 and component_prefixes:
            expanded = []
            for r in rows_in_table:
                for pfx in component_prefixes:
                    expanded.append(
                        dict(
                            field=f"{pfx}_{r['field']}",
                            units_html=r["units_html"],
                            units=r["units"],
                            desc_html=r["desc_html"],
                            desc=r["desc"],
                        )
                    )
            rows_in_table = expanded

        all_rows.extend(rows_in_table)

    return table_desc, all_rows


def build_table_map():
    """
    Parse index.xml and return a dict mapping relative location path
    (e.g. 'databases/fiducial_models/refl0100n1504_subhalo') to
    (db_group, table_name).

    Only pages that correspond to a JSP file under databases/ are included.
    """
    tree = ET.parse(INDEX_XML)
    root = tree.getroot()

    table_map = {}

    def walk(node, db_group=None):
        loc = node.get("location", "")
        title = node.get("title", "")

        # Determine db_group from immediate children of the <databases> page
        if loc == "databases":
            for child in node:
                walk(child, db_group=None)
            return

        if loc.startswith("databases/") and "/" in loc[len("databases/") :]:
            parts = loc.split("/")
            group = parts[1]  # fiducial_models, physics_vars, dmonly
            jsp_path = DOCS_ROOT / (loc + ".jsp")
            if jsp_path.exists() and not loc.endswith("/database"):
                table_map[loc] = (group, title)

        for child in node:
            walk(child, db_group)

    walk(root)
    return table_map


def detect_component_prefixes(path):
    """
    Return component prefixes if the JSP has a multi-prefix template block,
    else None.  We detect this by looking for the canonical phrasing in the
    prose text.
    """
    text = path.read_text(encoding="utf-8", errors="replace")
    if re.search(r"\[SF/NSF/Stars\]_", text) and text.count("<table") > 1:
        return COMPONENT_PREFIXES
    return None


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--output", default="metadata.csv", help="Output CSV file")
    args = parser.parse_args()

    table_map = build_table_map()

    fieldnames = [
        "db_group",
        "table_name",
        "table_description",
        "column_name",
        "units",
        "description",
        "units_html",
        "description_html",
    ]

    output_path = DOCS_ROOT / args.output
    with output_path.open("w", newline="", encoding="utf-8") as f:
        writer = csv.DictWriter(f, fieldnames=fieldnames)
        writer.writeheader()

        for loc in sorted(table_map):
            db_group, table_name = table_map[loc]
            jsp_path = DOCS_ROOT / (loc + ".jsp")
            prefixes = detect_component_prefixes(jsp_path)
            table_desc, rows = parse_jsp(jsp_path, component_prefixes=prefixes)

            for row in rows:
                writer.writerow(
                    {
                        "db_group": db_group,
                        "table_name": table_name,
                        "table_description": table_desc,
                        "column_name": row["field"],
                        "units": row["units"],
                        "description": row["desc"],
                        "units_html": row["units_html"],
                        "description_html": row["desc_html"],
                    }
                )

    print(f"Written {output_path}", file=sys.stderr)


if __name__ == "__main__":
    main()
