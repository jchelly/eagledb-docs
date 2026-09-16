<p>
Full listing of the content of the fsps table and description of the columns.
These properties are contained in tables denoted [modelname]_fsps.
This table can be linked to the [modelname]_SubHalo table using the unique GalaxyID identifier.
They have been computed at redshifts 0.1, 1, 2, and 3, for galaxies with at least 500 bound star particles
in  RefL0050N0752 as well as the simulations with a variable IMF: LoML0050N0752 and HiML0050N0752.
For LoML0050N0752 and HiML0050N0752, these redshifts correspond to snapshots 9, 5, 3 and 2. 
For RefL0050N0752 these redshifts correspond to snapshots 27, 19, 15, and 12. 
See <a href="http://adsabs.harvard.edu/abs/2018arXiv180409079B">Barber et al. (2018)</a>
for a description of the variable IMF simulations.
</p>

<table>
<tr><th align='left'>Field</th><th align='left'>Units</th><th align='left'>Description</th></tr>

<tr>
<!--Field-->       <td>GalaxyID</td>
<!--Units-->       <td> -      </td>
<!--Description--> <td>Unique identifier of each galaxy. This index is used to connect the SubHalo table to the Aperture, Magnitudes and Sizes tables.</td>
</tr>

<tr>
<!--Field-->       <td>GroupNumber</td>
<!--Units-->       <td> - </td>
<!--Description--> <td>Integer number to identify FoF halo. Note that this number is only unique to a given snapshot and should not be used to identify the same halo across multiple outputs.</td>
</tr>

<tr>
<!--Field-->       <td>SubGroupNumber</td>
<!--Units-->       <td> - </td>
<!--Description--> <td>Integer number of this galaxy within its FoF halo. Note that this number is only unique to a given snapshot and should not be used to identify the same galaxy across multiple outputs. The condition “SubGroupNumber  =  0” can be used to select central galaxies only.</td>
</tr>

<tr>
<!--Field-->       <td>SnapshotNumber</td>
<!--Units-->       <td> - </td>
<!--Description--> <td>Index of the snapshot at which this object exists</td>
</tr>

<tr>
<!--Field-->       <td>Age_ReProj_LumRweight</td>
<!--Units-->       <td>Gyr</td>
<!--Description--> <td>SDSS r-band weighted age of the galaxy, measured within a 2d projected circular aperture with radius ReProj</td>
</tr>

<tr>
<!--Field-->       <td>Mg_Fe_ReProj_LumRweight</td>
<!--Units-->       <td>-</td>
<!--Description--> <td>SDSs r-band weighted [Mg/Fe] of the galaxy, measured within a 2d projected circular aperture with radius ReProj. This is computed as the sum(Mg/Mg_sol) / sum(Fe/Fe_sol), summed over all stars, where Mg and Fe are the mass fractions of Mg and Fe, respectively. Solar values are taken from Asplund et al. 2009.</td>
</tr>

<tr>
<!--Field-->       <td>Metallicity_ReProj_LumRweight</td>
<!--Units-->       <td>-</td>
<!--Description--> <td>SDSS r-band weighted metal mass fraction, measured within a 2d projected circular aperture with radius ReProj</td>
</tr>

<tr>
<!--Field-->       <td>BirthP_ReProj_LumRweight</td>
<!--Units-->       <td>k cm<sup>-3</sup></td>
<!--Description--> <td>SDSS r-band weighted mean pressure at which the star particles in the galaxy were born, measured within a 2d projected circular aperture with radius ReProj. This is P/k_B, with k_B the Boltzmann constant.</td>
</tr>

<tr>
<!--Field-->       <td>IMfslope_ReProj_LumRweight</td>
<!--Units-->       <td>-</td>
<!--Description--> <td>SDSS r-band weighted mean IMF slope of the star particles in the galaxy, measured within a 2d projected circular aperture with radius ReProj. Note that this is the low-mass IMF slope (m<0.5Msun) for LoM-50, while it is the high-mass IMF slope (m>0.5 Msun) for HiM-50.</td>
</tr>

<tr>
<!--Field-->       <td>IMFslope_ReProj_FUVweight</td>
<!--Units-->       <td>-</td>
<!--Description--> <td>GALEX FUV-band weighted mean IMF slope of the star particles in the galaxy, measured within a 2d projected circular aperture with radius ReProj. Note that this is the low-mass IMF slope (m<0.5Msun) for LoM-50, while it is the high-mass IMF slope (m>0.5 Msun) for HiM-50.</td>
</tr>

<tr>
<!--Field-->       <td>StellarVelDisp_ReProj_LumRweight</td>
<!--Units-->       <td>km/s</td>
<!--Description--> <td>SDSS r-band weighted 1d stellar velocity dispersion, measured within a 2d projected circular aperture with radius ReProj. This is measured for only one projection (along the z-axis of the simulation), rather than the average of three projections as in other definitions of Velocity dispersion in the public EAGLE data.</td>
</tr>

<tr>
<!--Field-->       <td>ReProj</td>
<!--Units-->       <td>pkpc</td>
<!--Description--> <td>The 2d projected half-light radius measured in the SDSS r-band</td>
</tr>

<tr>
<!--Field-->       <td>fspsMassStars_ReProj</td>
<!--Units-->       <td>M<sub>&#x2299;</sub></td>
<!--Description--> <td>Stellar mass computed using FSPS, measured within a 2d projected circular aperture with radius ReProj</td>
</tr>

<tr>
<!--Field-->       <td>fspsMassStars_ReProj_ChabEvolve</td>
<!--Units-->       <td>M<sub>&#x2299;</sub></td>
<!--Description--> <td>Stellar mass computed using FSPS, assuming the stars evolved with a Chabrier IMF, measured within a 2d projected circular aperture with radius ReProj. This is not the Chabrier-reinterpretted stellar mass. To get a Chabrier-reinterpretted stellar mass, do Mstar_ChabReinterp = fspsLumR_ReProj * ( fspsMassStars_ReProj_ChabEvolve / fspsLumR_ReProj_ChabEvolve)</td>
</tr>

<tr>
<!--Field-->       <td>fspsMassStars_ReProj_SalpEvolve</td>
<!--Units-->       <td>M<sub>&#x2299;</sub></td>
<!--Description--> <td>Stellar mass computed using FSPS, assuming the stars evolved with a Salpeter IMF, measured within a 2d projected circular aperture with radius ReProj. This is not the Salpter-reinterpretted stellar mass. To get a Salpeter-reinterpretted stellar mass, do Mstar_SalpReinterp = fspsLumR_ReProj * ( fspsMassStars_ReProj_SalpEvolve / fspsLumR_ReProj_SalpEvolve)</td>
</tr>

<tr>
<!--Field-->       <td>fspsMassStars_30kpc</td>
<!--Units-->       <td>M<sub>&#x2299;</sub></td>
<!--Description--> <td>Stellar mass computed using FSPS, measured within a 3d spherical aperture with radius 30 proper kpc. </td>
</tr>

<tr>
<!--Field-->       <td>fspsMassStars_30kpc_ChabEvolve</td>
<!--Units-->       <td>M<sub>&#x2299;</sub></td>
<!--Description--> <td>Stellar mass computed using FSPS, assuming the stars evolved with a Chabrier IMF, measured within a 3d spherical aperture with radius 30 proper kpc. This is not the Chabrier-reinterpretted stellar mass. To get a Chabrier-reinterpretted stellar mass, do Mstar_ChabReinterp = fspsLumR_30kpc * ( fspsMassStars_30kpc_ChabEvolve / fspsLumR_30kpc_ChabEvolve)</td>
</tr>

<tr>
<!--Field-->       <td>fspsMassStars_30kpc_SalpEvolve</td>
<!--Units-->       <td>M<sub>&#x2299;</sub></td>
<!--Description--> <td>Stellar mass computed using FSPS, assuming the stars evolved with a Salpeter IMF, measured within a 3d spherical aperture with radius 30 proper kpc. This is not the Salpter-reinterpretted stellar mass. To get a Salpeter-reinterpretted stellar mass, do Mstar_SalpReinterp = fspsLumR_30kpc * ( fspsMassStars_30kpc_SalpEvolve / fspsLumR_30kpc_SalpEvolve)</td>
</tr>

<tr>
<!--Field-->       <td>fspsLumR_ReProj</td>
<!--Units-->       <td>L<sub>r,&#x2299;</sub></td>
<!--Description--> <td>SDSS r-band luminosity computed using FSPS, measured within a 2d projected circular aperture with radius ReProj</td>
</tr>

<tr>
<!--Field-->       <td>fspsLumR_ReProj_ChabEvolve</td>
<!--Units-->       <td>L<sub>r,&#x2299;</sub></td>
<!--Description--> <td>SDSS r-band luminosity computed using FSPS, assuming the stars evolved with a Chabrier IMF, measured within a 2d projected circular aperture with radius ReProj</td>
</tr>

<tr>
<!--Field-->       <td>fspsLumR_ReProj_SalpEvolve</td>
<!--Units-->       <td>L<sub>r,&#x2299;</sub></td>
<!--Description--> <td>SDSS r-band luminosity computed using FSPS, assuming the stars evolved with a Salpeter IMF, measured within a 2d projected circular aperture with radius ReProj</td>
</tr>

<tr>
<!--Field-->       <td>fspsLumR_30kpc</td>
<!--Units-->       <td>L<sub>r,&#x2299;</sub></td>
<!--Description--> <td>SDSS r-band luminosity computed using FSPS, measured within a 3d spherical aperture with radius 30 proper kpc.</td>
</tr>

<tr>
<!--Field-->       <td>fspsLumR_30kpc_ChabEvolve</td>
<!--Units-->       <td>L<sub>r,&#x2299;</sub></td>
<!--Description--> <td>SDSS r-band luminosity computed using FSPS, assuming the stars evolved with a Chabrier IMF, measured within a 3d spherical aperture with radius 30 proper kpc. </td>
</tr>

<tr>
<!--Field-->       <td>fspsLumR_30kpc_SalpEvolve</td>
<!--Units-->       <td>L<sub>r,&#x2299;</sub></td>
<!--Description--> <td>SDSS r-band luminosity computed using FSPS, assuming the stars evolved with a Salpeter IMF, measured within a 3d spherical aperture with radius 30 proper kpc. </td>
</tr>

<tr>
<!--Field-->       <td>fspsLumFUV_30kpc</td>
<!--Units-->       <td>L<sub>FUV,&#x2299;</sub></td>
<!--Description--> <td>GALEX FUV-band luminosity computed using FSPS, measured within a 3d spherical aperture with radius 30 proper kpc. </td>
</tr>

<tr>
<!--Field-->       <td>fspsLumFUV_30kpc_ChabEvolve</td>
<!--Units-->       <td>L<sub>FUV,&#x2299;</sub></td>
<!--Description--> <td>GALEX FUV-band luminosity computed using FSPS, assuming the stars evolved with a Chabrier IMF, measured within a 3d spherical aperture with radius 30 proper kpc. </td>
</tr>

<tr>
<!--Field-->       <td>fspsLumFUV_30kpc_SalpEvolve</td>
<!--Units-->       <td>L<sub>FUV,&#x2299;</sub></td>
<!--Description--> <td>GALEX FUV-band luminosity computed using FSPS, assuming the stars evolved with a Salpeter IMF, measured within a 3d spherical aperture with radius 30 proper kpc. </td>
</tr>

<tr>
<!--Field-->       <td>fspsLumG_ReProj</td>
<!--Units-->       <td>L<sub>G,&#x2299;</sub></td>
<!--Description--> <td>SDSS g-band luminosity computed using FSPS, measured within a 2d projected circular aperture with radius ReProj</td>
</tr>

<tr>
<!--Field-->       <td>fspsLumG_ReProj_ChabEvolve</td>
<!--Units-->       <td>L<sub>G,&#x2299;</sub></td>
<!--Description--> <td>SDSS g-band luminosity computed using FSPS, assuming the stars evolved with a Chabrier IMF, measured within a 2d projected circular aperture with radius ReProj</td>
</tr>

<tr>
<!--Field-->       <td>fspsLumG_ReProj_SalpEvolve</td>
<!--Units-->       <td>L<sub>G,&#x2299;</sub></td>
<!--Description--> <td>SDSS g-band luminosity computed using FSPS, assuming the stars evolved with a Salpeter IMF, measured within a 2d projected circular aperture with radius ReProj</td>
</tr>

</table>



