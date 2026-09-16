<p>
This table contains masses, ages, metallicities and magnitudes of the star particles in an Eagle run.
Each row represents a single star particle from the simulation snapshot indicated by the SnapNum column.
</p>
<p>
Only particles which belong to a galaxy (i.e. a subfind group) or a friends of friends (FoF) group are included.
A particle's parent galaxy can be identified by joining to the Subhalo table on the GalaxyID column and the 
parent FoF group can be identified by joining to the FoF table on the GroupID column.
</p>
<p>
The particle magnitudes can be combined to produce a total magnitude for a galaxy as follows:
<pre>
select
  (-2.5*log10(sum(power(10.0,-0.4*star.u)))) as mag_u
from
  RefL0100N1504_Stars as star
where
  GalaxyID = 1
</pre>
</p>

<p>Note that for some galaxies, the sum of particle luminosities within a 30 kpc aperture is not equivalent to the
corresponding integrated luminosity stored in the Magnitude tables. This is because the integrated luminosities 
were computed using a re-sampling procedure for young stellar populations. Re-sampling is performed to mitigate 
the effects of coarse sampling of young stellar populations on optical colours, as described in Trayford et. al. (2015).
As a result, differences are most significant for star forming galaxies at short wavelengths.</p>

<table>
<tr><th align='left'>Field</th><th align='left'>Units</th><th align='left'>Description</th></tr>
<tr><td> <p>GalaxyID              </p> </td><td> <p> -           </p> </td><td> <p>Unique identifier for the galaxy which this particle belongs to according to subfind, or -1 if the particle belongs to no galaxy. Can be used to join to the Subhalo table.</p></td></tr>
<tr><td> <p>GroupID               </p> </td><td> <p> -           </p> </td><td> <p>Unique identifier for the friends of friends group which this particle belongs to. Can be used to join to the FoF table.</p></td></tr>
<tr><td> <p>ParticleID            </p> </td><td> <p> -           </p> </td><td> <p>Identifier for this star particle.</p></td></tr>
<tr><td> <p>SnapNum               </p> </td><td> <p> -           </p> </td><td> <p>Snapshot at which this star particle exists.</p></td></tr>
<tr><td> <p>Mass                  </p> </td><td> <p>M<sub>⊙</sub></p> </td><td> <p>Current mass of this particle</p></td></tr>
<tr><td> <p>InitialMass           </p> </td><td> <p>M<sub>⊙</sub></p> </td><td> <p>Initial mass of this particle (before mass loss due to stellar evolution)</p></td></tr>
<tr><td> <p>StellarFormationTime  </p> </td><td> <p> -           </p> </td><td> <p>Expansion factor at which this star particle formed</p></td></tr>
<tr><td> <p>SmoothedMetallicity   </p> </td><td> <p> -           </p> </td><td> <p>Ratio of SPH-smoothed metal mass density and SPH-smoothed total gas mass density</p></td></tr>
<tr><td> <p>ApertureFlag          </p> </td><td> <p> -           </p> </td><td> <p>Set to 1 if this particle belongs to a galaxy and is within 30pkpc of the galaxy's potential minimum, otherwise 0.</p></td></tr>
<tr><td> <p>u                     </p> </td><td> <p> -           </p> </td><td> <p>Rest frame intrinsic u band magnitude in the AB system, assuming h=0.6777.</p></td></tr>
<tr><td> <p>g                     </p> </td><td> <p> -           </p> </td><td> <p>Rest frame intrinsic g band magnitude in the AB system, assuming h=0.6777.</p></td></tr>
<tr><td> <p>r                     </p> </td><td> <p> -           </p> </td><td> <p>Rest frame intrinsic r band magnitude in the AB system, assuming h=0.6777.</p></td></tr>
<tr><td> <p>i                     </p> </td><td> <p> -           </p> </td><td> <p>Rest frame intrinsic i band magnitude in the AB system, assuming h=0.6777.</p></td></tr>
<tr><td> <p>z                     </p> </td><td> <p> -           </p> </td><td> <p>Rest frame intrinsic z band magnitude in the AB system, assuming h=0.6777.</p></td></tr>
<tr><td> <p>Y                     </p> </td><td> <p> -           </p> </td><td> <p>Rest frame intrinsic Y band magnitude in the AB system, assuming h=0.6777.</p></td></tr>
<tr><td> <p>J                     </p> </td><td> <p> -           </p> </td><td> <p>Rest frame intrinsic J band magnitude in the AB system, assuming h=0.6777.</p></td></tr>
<tr><td> <p>H                     </p> </td><td> <p> -           </p> </td><td> <p>Rest frame intrinsic H band magnitude in the AB system, assuming h=0.6777.</p></td></tr>
<tr><td> <p>K                     </p> </td><td> <p> -           </p> </td><td> <p>Rest frame intrinsic K band magnitude in the AB system, assuming h=0.6777.</p></td></tr>
</table>
