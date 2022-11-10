# ACCESS-ESM AMOS 2022 Usefull scripts

## conver the atmosphere output file name from Jan to 001 (not necessary) ...

  please use change_unext_esm_ars599.sh $job_id

### ACCESS Archiver

** note ***
Check out from Tammas Loughran:
https://git.nci.org.au/tfl561/ACCESS-Archiver/-/tree/main
Usage is detailed unger nci git. (NCI account needed)

- to convert UM format to netCDF
- to move wrap data from archive to gdata (easy for OOD)

** to do list **
under wrap_ACCESS_Archiver.sh

**1.  make sure the base outputs files
```
base_dir=/scratch/p66/tfl561/access-esm/archive
```
**2.  output directory
```
arch_dir=/g/data/p66/tfl561/ACCESS-ESM
``` 
**3.  setup run type
```
#access_version = [cm2, cm2amip, cm2chem, esmscript, esmpayu, om2]
old ESM k shell script
access_version=esmscript
now payu ESM
access_version=esmpayu
``` 
**4.  atm outputs need to convert to netCDF
```
#ncexists = [true, false]
#true: Copy netcdf version of file if it exists; false: Always use UM pp-file if it exists, whether or not netcdf version exists
ncexists=true
```
**5.  convert subdaily 3h 6h data ?
```
#subdaily = [true, false]; convert subdaily atm files?
subdaily=false
``` 
**6.  multiple job list
```
#loc_exps = list of local experiment names (stored in 'base_dir') to archive
loc_exps=(
HI-00
HI-02
)
```
### python scripts (analysis data)



