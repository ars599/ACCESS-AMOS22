# ACCESS Training (2020)

```
please spend sometime before the workshop to read and watch the video from the 
previous ACCESS training workshop done by Chloe and Holger.
```

** note **

https://confluence.csiro.au/display/ACCESS/ACCESS+Training

**1. ACCESS-CM2 Training

**2. ACCESS-ESM1.5 Training
https://confluence.csiro.au/display/ACCESS/ACCESS-ESM1.5+Training

**3. Setting up for ACCESS-ESM1.5
https://confluence.csiro.au/display/ACCESS/Setting+up+for+ACCESS-ESM1.5

**4. Archiver
https://git.nci.org.au/cm2704/ACCESS-Archiver.git


# AMOS ACCESS ESM Workshop 2022

** note **
Please Please Please make sure you can git clone and run the ESM before the workshop!!!

**1. Read throught the instruction but git clone the following link:

	https://github.com/ars599/PI-DEMO

This is the one particullary used for the training!!!


## ACCESS-ESM AMOS 2022 Usefull scripts

**1. conver the atmosphere output file name from Jan to 001 (not necessary) ...
```
  please use change_unext_esm_ars599.sh $job_id
```
**2. xconv
Download

	/g/data/access/projects/access/apps/xconv/1.94/xconv

**3. ACCESS Archiver

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

It was based on tfl561, and modify to fit AMOS 2022 demo activity

```

** to do list **

**3-0. Modify under wrap_ACCESS_Archiver.sh

**3-1.  make sure the base outputs files (forexample user: ars599)
```
	base_dir=/scratch/nf33/ars599/access-esm/archive
```
**3-2.  output directory
```
	arch_dir=/g/data/nf33/ars599/archive/CMIP6/ACCESS-ESM1-5/
```
**3-3.  setup run type
```
	#access_version = [cm2, cm2amip, cm2chem, esmscript, esmpayu, om2]
	old ESM k shell script
	access_version=esmscript
	now payu ESM
	access_version=esmpayu
	
	basic knowledge of the namelist file for each module
```
**3-4.  atm outputs need to convert to netCDF (xconv can only deal with single file)
```
	#ncexists = [true, false]
	#true: Copy netcdf version of file if it exists; false: Always use UM pp-file if it exists, whether or not netcdf version exists
	ncexists=true
```
**3-5.  convert subdaily 3h 6h data ?
```
	#subdaily = [true, false]; convert subdaily atm files?
	subdaily=false
```
**3-6.  multiple job list
```
	#loc_exps = list of local experiment names (stored in 'base_dir') to archive
	loc_exps=(
	HI-00
	HI-02
	)
```
# python scripts (analysis data)
	HI-00 origin need to read all files and then save to a single variable file
	https://github.com/ars599/ACCESS-AMOS22/blob/main/scripts/plot_ts_concat_demo3.ipynb


	Now just use existing files:
	fn1 = 'sst_HI-00_output.nc'
	fn2 = 'sst_HI-02_output.nc'

	The files have been copied to 
	idir = '/g/data/access/access_amos22/archive/'
	ext1 = idir+"sst_HI-00_output.nc"
	ext2 = idir+"sst_HI-02_output.nc"
	ext3 = idir+"pr_HI-00_output.nc"
	ext4 = idir+"pr_HI-02_output.nc"

	https://github.com/ars599/ACCESS-AMOS22/blob/main/scripts/plot_ts_concat_demo.ipynb


# Cheat sheet for PI-DEMO interactive run for ACCESS workshop 

** Before submitting your job: 

Login via ssh  
```
	ssh -X UserID@gadi.nci.org.au 
```
Need to switch project to nf33 (check with echo $PROJECT) 
```
	switchproj nf33 
	echo $PROJECT 
```
Create and cd into /scratch/nf33/userid/access-esm (mkdir) 
```
	mkdir /scratch/nf33/UserID 
	mkdir /scratch/nf33/UserID/access-esm 
	cd /scratch/nf33/UserID/access-esm 
```
** Load modules  
```
	module use /g/data/hh5/public/modules 
	module load conda/analysis3-unstable 
```
*** Checkout code git clone 
```
	git clone https://github.com/ars599/PI-DEMO 
	cd PI-DEMO 
```

** Explain settings in config file (Tilo/Arnold to explain settings) 
```
	cat config.yml 
```
Also readme file, but please follow our instructions today 

cat README.md 

submit model simulation to queue 
```
	payu run 
```
** After submitting your job: 

Check status of run 
```
	qstat -wau UserID 
```
** New folder (and link) will be created, contains output for 3 main components and coupler including information for each processor in atmosphere + copy of all configuration files (Tilo/Arnold to explain files and output in work folder) 

/scratch/nf33/UserID/access-esm/work/PI-DEMO 

cat /scratch/nf33/UserID/access-esm/work/PI-DEMO/atmosphere/atm.fort6.pe0 

cat /scratch/nf33/UserID/access-esm/work/PI-DEMO/atmosphere/STASHC 

** output files for atmoshpere created for monthly and daily output 

aiihca.paa1jan and aiihca.pea1jan 

New folder “archive” created when run complete, contains model output 

/scratch/nf33/txz599/access-esm/archive/PI-DEMO/output000 

** Look at monthly and daily output with xconv and/or ferret, convert one field to netcdf with xconv and then load with ferret (Tilo/Arnold to explain analysis of output) 
```
	module use ~access/modules 
	module load xconv 
	module load ferret 
	xconv aiihca.paa1jan 
```

# Please finish the Survey and if you have any qestion please leave your concern at the following link

** AMOS ACCESS ESM workhop discussion

https://github.com/ars599/ACCESS-AMOS22/issues

** AMOS ACCESS Survey

![](https://github.com/ars599/ACCESS-AMOS22/blob/main/SV_aXgl9K4raENaME6-qrcode.png)

