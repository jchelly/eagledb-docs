<p> Full listing of the content of the halo table and description of the
columns. These properties are contained in tables denoted [modelname]_FOF. This
table can be linked to the [modelname]_SubHalo table using the unique GroupID
identifier. </p>

<table>
<tr><th align='left'>Field</th><th align='left'>Units</th><th align='left'>Description</th></tr>
<tr><td><p>GroupID</p></td><td><p>-</p></td><td><p>Unique identifier of this FoF group. This connects with the associated GroupID from the SubHalo table allowing a link between a galaxy’s SubHalo table and FOF table properties.</p></td></tr>
<tr><td><p>Redshift</p></td><td><p>-</p></td><td><p>Redshift at which these properties are computed.</p></td></tr>
<tr><td><p>SnapNum</p></td><td><p>-</p></td><td><p>Snapshot number containing that halo.</p></td></tr>
<tr><td><p>GroupCentreOfPotential_x</p></td><td><p></p></td><td><p></p></td></tr>
<tr><td><p>GroupCentreOfPotential_y</p></td><td><p>cMpc</p></td><td><p></p></td></tr>
<tr><td><p>GroupCentreOfPotential_z</p></td><td><p></p></td><td><p>Co-moving position of the minumum of the gravitational potential of the halo.</p></td></tr>
<tr><td><p>GroupMass</p></td><td><p>M<sub>⊙</sub></p></td><td><p>Total Friends-of-Friends mass of this halo.</p></td></tr>
<tr><td><p>Group_M_Crit200</p></td><td><p>M<sub>⊙</sub></p></td><td><p>Total mass within radius Group_R_Crit200.</p></td></tr>
<tr><td><p>Group_M_Crit500</p></td><td><p>M<sub>⊙</sub></p></td><td><p>Total mass within radius Group_R_Crit500.</p></td></tr>
<tr><td><p>Group_M_Crit2500</p></td><td><p>M<sub>⊙</sub></p></td><td><p>Total mass within radius Group_R_Crit2500.</p></td></tr>
<tr><td><p>Group_M_Mean200</p></td><td><p>M<sub>⊙</sub></p></td><td><p>Total mass within radius Group_R_Mean200.</p></td></tr>
<tr><td><p>Group_M_Mean500</p></td><td><p>M<sub>⊙</sub></p></td><td><p>Total mass within radius Group_R_Mean500.</p></td></tr>
<tr><td><p>Group_M_Mean2500</p></td><td><p>M<sub>⊙</sub></p></td><td><p>Total mass within radius Group_R_Mean2500.</p></td></tr>
<tr><td><p>Group_M_TopHat200</p></td><td><p>M<sub>⊙</sub></p></td><td><p>Total mass within radius Group_R_Tophat200.</p></td></tr>
<tr><td><p>Group_R_Crit200</p></td><td><p>pkpc</p></td><td><p>Physical radius within which density is 200 times the critical density of the Universe.</p></td></tr>
<tr><td><p>Group_R_Crit500</p></td><td><p>pkpc</p></td><td><p>Physical radius within which density is 500 times the critical density of the Universe.</p></td></tr>
<tr><td><p>Group_R_Crit2500</p></td><td><p>pkpc</p></td><td><p>Physical radius within which density is 2500 times the critical density of the Universe.</p></td></tr>
<tr><td><p>Group_R_Mean200</p></td><td><p>pkpc</p></td><td><p>Physical radius within which density is 200 times the mean density of the Universe.</p></td></tr>
<tr><td><p>Group_R_Mean500</p></td><td><p>pkpc</p></td><td><p>Physical radius within which density is 500 times the mean density of the Universe.</p></td></tr>
<tr><td><p>Group_R_Mean2500</p></td><td><p>pkpc</p></td><td><p>Physical radius within which density is 2500 times the mean density of the Universe.</p></td></tr>
<tr><td><p>Group_R_TopHat200</p></td><td><p>pkpc</p></td><td><p>Physical radius within which density is 18π<sup>2</sup>+82(Ω<sub>m</sub>(z)-1)-39(Ω<sub>m</sub>(z)-1)<sup>2</sup></p></td></tr>
<tr><td><p>NumOfSubhalos</p></td><td><p>-</p></td><td><p>Number of subhaloes (galaxies) identified as belonging to this halo.</p></td></tr>
<tr><td><p>RandomNumber</p></td><td><p>-</p></td><td><p>Random number uniform in the range [0, 1).</p></td></tr>
</table>

