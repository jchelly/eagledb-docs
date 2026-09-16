<p> Full listing of the content of the main galaxy properties table and
description of the columns. These properties are contained in tables
denoted[modelname]_SubHalo. The first five lines of the table give the indices
used to navigate between the side tables and through the merger trees. Particle
types are dark matter, gas, stars and black holes and collective properties
such as Mass sum over all of these particles unless otherwise stated. </p>

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
<tr><td><p>Spurious</p></td><td><p>-</p></td><td><p>Value is 1 if the galaxy is an artefact of the subfind algorithm and 0 if the galaxy is a genuine object.</p></td></tr>
<tr><td><p>Image_face</p></td><td><p></p></td><td><p></p></td></tr>
<tr><td><p>Image_edge</p></td><td><p>-</p></td><td><p></p></td></tr>
<tr><td><p>Image_box</p></td><td><p></p></td><td><p>Weblink to the mock gri image of the galaxy in the three different orientations (face-on, edge-on and along the simulation z axes). When querying the database via the browser, the image appears in the column of the results table.</p></td></tr>
<tr><td><p>BlackHoleMass</p></td><td><p>M<sub>⊙</sub></p></td><td><p>Total black hole (subgrid) mass. As black holes are seeded in a subgrid fashion they contain both a subgrid and a particle mass, full details of this process can be found in Schaye et al. 2015.</p></td></tr>
<tr><td><p>BlackHoleMassAccretionRate</p></td><td><p>M<sub>⊙</sub> yr<sup>-1</sup></p></td><td><p>Total instantanious accretion rate of all black holes.</p></td></tr>
<tr><td><p>CentreOfMass_x</p></td><td><p></p></td><td><p></p></td></tr>
<tr><td><p>CentreOfMass_y</p></td><td><p>cMpc</p></td><td><p></p></td></tr>
<tr><td><p>CentreOfMass_z</p></td><td><p></p></td><td><p>Co-moving position of the centre of mass.</p></td></tr>
<tr><td><p>CentreOfPotential_x</p></td><td><p></p></td><td><p></p></td></tr>
<tr><td><p>CentreOfPotential_y</p></td><td><p>cMpc</p></td><td><p></p></td></tr>
<tr><td><p>CentreOfPotential_z</p></td><td><p></p></td><td><p>Co-moving position of the minimum of the gravitational potential defined by the position of the most bound particle.</p></td></tr>
<tr><td><p>GasSpin_x</p></td><td><p></p></td><td><p></p></td></tr>
<tr><td><p>GasSpin_y</p></td><td><p>pkpc km s<sup>-1</sup></p></td><td><p></p></td></tr>
<tr><td><p>GasSpin_z</p></td><td><p></p></td><td><p>Total angular momentum per unit mass of all gas relative to the CentreOfMass.</p></td></tr>
<tr><td><p>HalfMassRad_DM</p></td><td><p>pkpc</p></td><td><p>Physical radius enclosing half of the dark matter mass.</p></td></tr>
<tr><td><p>HalfMassRad_Gas</p></td><td><p>pkpc</p></td><td><p>Physical radius enclosing half of the gas mass.</p></td></tr>
<tr><td><p>HalfMassRad_Star</p></td><td><p>pkpc</p></td><td><p>Physical radius enclosing half of the stellar mass.</p></td></tr>
<tr><td><p>HalfMassRad_BH</p></td><td><p>pkpc</p></td><td><p>Physical radius enclosing half of the black hole mass. This is constructed from the particle masses and not from the subgrid masses.</p></td></tr>
<tr><td><p>HalfMassProjRad_DM</p></td><td><p>pkpc</p></td><td><p>Projected physical radius enclosing half of the dark matter mass (averaged over three orthogonal projections).</p></td></tr>
<tr><td><p>HalfMassProjRad_Gas</p></td><td><p>pkpc</p></td><td><p>Projected physical radius enclosing half of the gas mass (averaged over three orthogonal projections).</p></td></tr>
<tr><td><p>HalfMassProjRad_Star</p></td><td><p>pkpc</p></td><td><p>Projected physical radius enclosing half of the stellar mass (averaged over three orthogonal projections).</p></td></tr>
<tr><td><p>HalfMassProjRad_BH</p></td><td><p>pkpc</p></td><td><p>Projected physical radius enclosing half of the black hole mass (averaged over three orthogonal projections). This is constructed from the particle masses and not from the subgrid masses.</p></td></tr>
<tr><td><p>InitialMassWeightedBirthZ</p></td><td><p>z</p></td><td><p>Mean redshift of formation of stars, weighted by birth mass. </p></td></tr>
<tr><td><p>InitialMassWeightedStellarAge</p></td><td><p>Gyr</p></td><td><p>Mean age of stars, weighted by birth mass.</p></td></tr>
<tr><td><p>KineticEnergy</p></td><td><p>M<sub>⊙</sub> (km/s)<sup>2</sup></p></td><td><p>Total kinetic energy calculated.</p></td></tr>
<tr><td><p>MechanicalEnergy</p></td><td><p>M<sub>⊙</sub> (km/s)<sup>2</sup></p></td><td><p>Total mechanical energy calculated.</p></td></tr>
<tr><td><p>Mass</p></td><td><p>M<sub>⊙</sub></p></td><td><p>Total current mass of all particles.</p></td></tr>
<tr><td><p>MassType_DM</p></td><td><p>M<sub>⊙</sub></p></td><td><p>Total dark matter mass.</p></td></tr>
<tr><td><p>MassType_Gas</p></td><td><p>M<sub>⊙</sub></p></td><td><p>Total gas mass.</p></td></tr>
<tr><td><p>MassType_Star</p></td><td><p>M<sub>⊙</sub></p></td><td><p>Total stellar mass.</p></td></tr>
<tr><td><p>MassType_BH</p></td><td><p>M<sub>⊙</sub></p></td><td><p>Total black hole mass. Note that this is the sum of the particle masses, not of the subgrid black hole masses.</p></td></tr>
<tr><td><p>RandomNumber</p></td><td><p>-</p></td><td><p>Random number uniform in the range [0, 1).</p></td></tr>
<tr><td><p>StarFormationRate</p></td><td><p>M<sub>⊙</sub> yr<sup>-1</sup></p></td><td><p>Total star formation rate. This is the mass of stars formed per unit time before any mass loss due to winds and supernovae. </p></td></tr>
<tr><td><p>StellarInitialMass</p></td><td><p>M<sub>⊙</sub></p></td><td><p>Sum of birth masses of all stars.</p></td></tr>
<tr><td><p>StellarVelDisp</p></td><td><p>km s<sup>-1</sup></p></td><td><p>Average one dimensional velocity dispersion of stars.</p></td></tr>
<tr><td><p>ThermalEnergy</p></td><td><p>M<sub>⊙</sub> (km/s)<sup>2</sup></p></td><td><p>Total thermal energy of the gas particles.</p></td></tr>
<tr><td><p>TotalEnergy</p></td><td><p>M<sub>⊙</sub> (km/s)<sup>2</sup></p></td><td><p>Total energy of the galaxy.</p></td></tr>
<tr><td><p>Velocity_x</p></td><td><p></p></td><td><p></p></td></tr>
<tr><td><p>Velocity_y</p></td><td><p>km s<sup>-1</sup></p></td><td><p></p></td></tr>
<tr><td><p>Velocity_z</p></td><td><p></p></td><td><p>Peculiar velocity.</p></td></tr>
<tr><td><p>Vmax</p></td><td><p>km s<sup>-1</sup></p></td><td><p>Maximum of the circular velocity rotation curve.</p></td></tr>
<tr><td><p>VmaxRadius</p></td><td><p>pkpc</p></td><td><p>Physical distance relative to the CentreOfPotential at which the circular velocity equals Vmax.</p></td></tr>
</table>

<p> Columns in this table exist for each of three different components:
star-forming gas (SF), non-star-forming gas (NSF) and stars (Stars). As these
properties are repeated for each of these components, we only describe them
once. In the database each property will be preceded with either
[SF/NSF/Stars]_ before its name. For instance, the metallicity field will exist
in three variants: SF_Metallicity, NSF_Metallicity and Stars_Metallicity for
the metallicity of the star-forming gas, of the non star-forming gas and of the
stars, respectively. </p>

<table>
<tr><th align='left'>Field</th><th align='left'>Units</th><th align='left'>Description</th></tr>
<tr><td><p>Hydrogen</p></td><td><p>-</p></td><td><p></p></td></tr>
<tr><td><p>Helium</p></td><td><p>-</p></td><td><p></p></td></tr>
<tr><td><p>Carbon</p></td><td><p>-</p></td><td><p></p></td></tr>
<tr><td><p>Nitrogen</p></td><td><p>-</p></td><td><p></p></td></tr>
<tr><td><p>Oxygen</p></td><td><p>-</p></td><td><p></p></td></tr>
<tr><td><p>Neon</p></td><td><p>-</p></td><td><p></p></td></tr>
<tr><td><p>Magnesium</p></td><td><p>-</p></td><td><p></p></td></tr>
<tr><td><p>Silicon</p></td><td><p>-</p></td><td><p></p></td></tr>
<tr><td><p>Iron</p></td><td><p>-</p></td><td><p>Mass fraction of this element. Note that these are absolute metallicites and do not depend on a solar calibration Z_sun.</p></td></tr>
<tr><td><p>IronFromSNIa</p></td><td><p>-</p></td><td><p>Fraction of the total mass in Iron coming from SNIa ejecta.</p></td></tr>
<tr><td><p>KineticEnergy</p></td><td><p>M<sub>⊙</sub> (km/s)<sup>2</sup></p></td><td><p>Total kinetic energy.</p></td></tr>
<tr><td><p>Mass</p></td><td><p>M<sub>⊙</sub></p></td><td><p>Total mass.</p></td></tr>
<tr><td><p>MassFromAGB</p></td><td><p>M<sub>⊙</sub></p></td><td><p>Total mass from AGB ejecta.</p></td></tr>
<tr><td><p>MassFromSNII</p></td><td><p>M<sub>⊙</sub></p></td><td><p>Total mass from massive star and type II SN ejecta.</p></td></tr>
<tr><td><p>MassFromSNIa</p></td><td><p>M<sub>⊙</sub></p></td><td><p>Total mass from type Ia SN ejecta.</p></td></tr>
<tr><td><p>MassWeightedEntropy</p></td><td><p></p></td><td><p> Mass weighted pseudo entropy.</p></td></tr>
<tr><td><p>MassWeightedTemperature</p></td><td><p>K</p></td><td><p>Mass weighted temperature.</p></td></tr>
<tr><td><p>Metallicity</p></td><td><p>-</p></td><td><p>Metal mass fraction.</p></td></tr>
<tr><td><p>MetalsFromAGB</p></td><td><p>M<sub>⊙</sub></p></td><td><p>Total metal mass originating from AGB ejecta.</p></td></tr>
<tr><td><p>MetalsFromSNII</p></td><td><p>M<sub>⊙</sub></p></td><td><p>Total metal mass originating from massive stars and SN Type II ejecta.</p></td></tr>
<tr><td><p>MetalsFromSNIa</p></td><td><p>M<sub>⊙</sub></p></td><td><p>Total metal mass originating from SN Type I ejecta.</p></td></tr>
<tr><td><p>Spin_x</p></td><td><p></p></td><td><p></p></td></tr>
<tr><td><p>Spin_y</p></td><td><p>pkpc km s<sup>-1</sup></p></td><td><p></p></td></tr>
<tr><td><p>Spin_z</p></td><td><p></p></td><td><p>Total angular momentum per unit mass relative to the CentreOfMass.</p></td></tr>
<tr><td><p>ThermalEnergy</p></td><td><p>M<sub>⊙</sub> (km/s)<sup>2</sup></p></td><td><p>Total thermal energy. This does not exist for Stars.</p></td></tr>
<tr><td><p>TotalEnergy</p></td><td><p>M<sub>⊙</sub> (km/s)<sup>2</sup></p></td><td><p>Total energy.</p></td></tr>
</table>


