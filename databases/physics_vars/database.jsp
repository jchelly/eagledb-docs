
<p>
This database contains the models described in
<a href="http://adsabs.harvard.edu/abs/2015MNRAS.450.1937C">Crain et al. (2015)</a>
and also two "NoAGN" models, in which there are no black holes or AGN feedback.
To access tables in this database, the table name must be prefixed with "Physics_vars.." 
(note the two dots). For example, to return the 10 most massive galaxies at z=0 in the NoAGN model:
<pre>
SELECT
  top 10 *
FROM
  Physics_vars..NoAGNL0025N0376_Subhalo
WHERE
  SnapNum = 28
ORDER BY Mass DESC
</pre>
</p>
