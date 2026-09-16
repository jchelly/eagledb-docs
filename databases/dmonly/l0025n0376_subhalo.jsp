<p> Full listing of the content of the main galaxy properties table and
description of the columns. These properties are contained in tables
denoted[modelname]_SubHalo. The first five lines of the table give the indices
used to navigate between the side tables and through the merger trees. The 
DMONLY database contains simulations with no baryonic component, so many
of the columns present in the other Eagle models are not present here. </p>

<table>
<tr><th align='left'>Field</th><th align='left'>Units</th><th align='left'>Description</th></tr>
<tr><td><p>GalaxyID</p></td><td><p>-</p></td><td><p>Unique identifier of each galaxy. This index is used to connect the SubHalo table to the Aperture, Magnitudes and Sizes tables.</p></td></tr>
<tr><td><p>LastProgID</p></td><td><p>-</p></td><td><p>GalaxyID of the last progenitor of this galaxy. Used for merger tree traversal.</p></td></tr>
<tr><td><p>TopLeafID</p></td><td><p>-</p></td><td><p>GalaxyID of the last progenitor in the main progenitor branch. Used for merger tree traversal.</p></td></tr>
<tr><td><p>DescendantID</p></td><td><p>-</p></td><td><p>GalaxyID of the descendant of this galaxy.</p></td></tr>
<tr><td><p>GroupID</p></td><td><p>-</p></td><td><p>Unique identifier of the FoF halo containing this galaxy. This index is used to connect the SubHalo to the parent FoF group</p></td></tr>
<tr><td><p>Redshift</p></td><td><p>-</p></td><td><p>Redshift at which these properties are computed.</p></td></tr>
<tr><td><p>Snapnum</p></td><td><p>-</p></td><td><p>Snapshot number at which these properties are computed.</p></td></tr>
<tr><td><p>GroupNumber</p></td><td><p>-</p></td><td><p>Integer number to identify FoF halo. Note that this number is only unique to a given snapshot and should not be used to identify the same halo across multiple outputs.</p></td></tr>
<tr><td><p>SubGroupNumber</p></td><td><p>-</p></td><td><p>Integer number of this galaxy within its FoF halo. Note that this number is only unique to a given snapshot and should not be used to identify the same galaxy across multiple outputs. The condition “SubGroupNumber  =  0” can be used to select central galaxies only.</p></td></tr>
<tr><td><p>CentreOfMass_x</p></td><td><p></p></td><td><p></p></td></tr>
<tr><td><p>CentreOfMass_y</p></td><td><p>cMpc</p></td><td><p></p></td></tr>
<tr><td><p>CentreOfMass_z</p></td><td><p></p></td><td><p>Co-moving position of the centre of mass.</p></td></tr>
<tr><td><p>CentreOfPotential_x</p></td><td><p></p></td><td><p></p></td></tr>
<tr><td><p>CentreOfPotential_y</p></td><td><p>cMpc</p></td><td><p></p></td></tr>
<tr><td><p>CentreOfPotential_z</p></td><td><p></p></td><td><p>Co-moving position of the minimum of the gravitational potential defined by the position of the most bound particle.</p></td></tr>
<tr><td><p>HalfMassRad_DM</p></td><td><p>pkpc</p></td><td><p>Physical radius enclosing half of the dark matter mass.</p></td></tr>
<tr><td><p>HalfMassProjRad_DM</p></td><td><p>pkpc</p></td><td><p>Projected physical radius enclosing half of the dark matter mass (averaged over three orthogonal projections).</p></td></tr>
<tr><td><p>KineticEnergy</p></td><td><p>M<sub>⊙</sub> (km/s)<sup>2</sup></p></td><td><p>Total kinetic energy calculated.</p></td></tr>
<tr><td><p>MechanicalEnergy</p></td><td><p>M<sub>⊙</sub> (km/s)<sup>2</sup></p></td><td><p>Total mechanical energy calculated.</p></td></tr>
<tr><td><p>Mass</p></td><td><p>M<sub>⊙</sub></p></td><td><p>Total current mass of all particles.</p></td></tr>
<tr><td><p>MassType_DM</p></td><td><p>M<sub>⊙</sub></p></td><td><p>Total dark matter mass.</p></td></tr>
<tr><td><p>RandomNumber</p></td><td><p>-</p></td><td><p>Random number uniform in the range [0, 1).</p></td></tr>
<tr><td><p>TotalEnergy</p></td><td><p>M<sub>⊙</sub> (km/s)<sup>2</sup></p></td><td><p>Total energy of the galaxy.</p></td></tr>
<tr><td><p>Velocity_x</p></td><td><p></p></td><td><p></p></td></tr>
<tr><td><p>Velocity_y</p></td><td><p>km s<sup>-1</sup></p></td><td><p></p></td></tr>
<tr><td><p>Velocity_z</p></td><td><p></p></td><td><p>Peculiar velocity.</p></td></tr>
<tr><td><p>Vmax</p></td><td><p>km s<sup>-1</sup></p></td><td><p>Maximum of the circular velocity rotation curve.</p></td></tr>
<tr><td><p>VmaxRadius</p></td><td><p>pkpc</p></td><td><p>Physical distance relative to the CentreOfPotential at which the circular velocity equals Vmax.</p></td></tr>
</table>

