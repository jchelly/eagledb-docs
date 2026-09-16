<p>
This database contains dark matter only versions of several of the Eagle simulation boxes.
To access tables in this database, the table name must be prefixed with "DMONLY.." 
(note the two dots). For example, the following query could be used to return the 10 
most massive FoF groups at z=0 in the 100Mpc box: 
<pre>
SELECT
  top 10 *
FROM
  DMONLY..L0100N1504_FoF
WHERE
  SnapNum = 28
ORDER BY GroupMass DESC
</pre>
</p>


