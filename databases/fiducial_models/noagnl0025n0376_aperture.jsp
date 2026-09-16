<p> Full listing of the content of the aperture table and description of the
columns. These properties are contained in tables denoted [modelname]_Aperture.
This table contains measurements within spherical apertures centred on the
minimum of the gravitational potential of a given galaxy. Each row represents a
set of measurements for a single galaxy using a single aperture size in
physical kpc. The GalaxyID column can be used to join this table to the
corresponding [modelname]_SubHalo table. </p>

<table>
<tr><th align='left'>Field</th><th align='left'>Units</th><th align='left'>Description</th></tr>
<tr><td><p>GalaxyID</p></td><td><p>-</p></td><td><p>Unique ID of this galaxy, corresponding to the GalaxyID in the SubHalo table.</p></td></tr>
<tr><td><p>ApertureSize</p></td><td><p>pkpc</p></td><td><p>Radius of the aperture used for this measurement from the center of potential, available aperture sizes are: 1, 3, 5, 10, 20, 30, 40, 50, 70 and 100 pkpc.</p></td></tr>
<!--<tr><td><p>VelDisp</p></td><td><p>km s<sup>-1</sup></p></td><td><p>Stellar velocity dispersion within the aperture, with respect to the centre of mass of the galaxy.</p></td></tr> -->
<tr><td><p>SFR</p></td><td><p>M<sub>⊙</sub> yr<sup>-1</sup></p></td><td><p>Star formation rate within the aperture.</p></td></tr>
<tr><td><p>Mass_BH</p></td><td><p>M<sub>⊙</sub></p></td><td><p>Total (particle) mass of all black holes within the aperture.</p></td></tr>
<tr><td><p>Mass_DM</p></td><td><p>M<sub>⊙</sub></p></td><td><p>Total dark matter mass within the aperture.</p></td></tr>
<tr><td><p>Mass_Gas</p></td><td><p>M<sub>⊙</sub></p></td><td><p>Total gas mass within the aperture.</p></td></tr>
<tr><td><p>Mass_Star</p></td><td><p>M<sub>⊙</sub></p></td><td><p>Total stellar mass within the aperture.</p></td></tr>
</table>

