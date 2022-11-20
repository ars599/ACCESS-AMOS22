# ACCESS Training (2020)

** note ***
https://confluence.csiro.au/display/ACCESS/ACCESS+Training

**1. ACCESS-CM2 Training

**2. ACCESS-ESM1.5 Training
https://confluence.csiro.au/display/ACCESS/ACCESS-ESM1.5+Training

**3. Setting up for ACCESS-ESM1.5
https://confluence.csiro.au/display/ACCESS/Setting+up+for+ACCESS-ESM1.5

**4. Archiver
https://git.nci.org.au/cm2704/ACCESS-Archiver.git


# ACCESS-ESM AMOS 2022 Usefull scripts

## conver the atmosphere output file name from Jan to 001 (not necessary) ...

  please use change_unext_esm_ars599.sh $job_id

### xconv

** location **
/g/data/access/projects/access/apps/xconv/1.94/xconv

### ACCESS Archiver

** note **
```
Check out from Tammas Loughran:
https://git.nci.org.au/tfl561/ACCESS-Archiver/-/tree/main
Usage is detailed unger nci git. (NCI account needed)

- to convert UM format to netCDF
- to move wrap data from archive to gdata (easy for OOD)
```

```
alternately can use from:


https://github.com/ars599/ACCESS-Archiver_tfl561

```

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
# python scripts (analysis data)
```
HI-00 origin need to read all files and then save to a single variable file
https://github.com/ars599/ACCESS-AMOS22/blob/main/scripts/plot_ts_concat_demo2.ipynb


Now just use existing files:
fn1 = 'sst_HI-00_output.nc'
fn2 = 'sst_HI-02_output.nc'


https://github.com/ars599/ACCESS-AMOS22/blob/main/scripts/plot_ts_concat_demo.ipynb



```

