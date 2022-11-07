#!/bin/bash

if [[ -z $1 ]]; then 
  echo no runid is specified
  exit
fi

# Initialize an associative array with (month name, number) pairs
declare -A map=([jan]=01 [feb]=02 [mar]=03 [apr]=04 [may]=05 [jun]=06 
[jul]=07 [aug]=08 [sep]=09 [oct]=10 [nov]=11 [dec]=12);

RUNID=$1

#loc=/scratch/$PROJECT/$USER/archive/$RUNID/history/atm
loc=/scratch/$PROJECT/$USER/access-esm/archive/$RUNID/output???/atmosphere
#loc=/scratch/$PROJECT/$USER/$RUNID/atm
#loc=/scratch/$PROJECT/$USER/$RUNID
joba=$RUNID'a'
echo $loc
echo $joba
here=`pwd`


for fld in $loc 
  do
    cd $fld
    echo `pwd`

    for i in * 
      do mv $i $(echo $i | sed -e "s/jan/01001/" -e "s/feb/02001/" -e "s/mar/03001/" -e "s/apr/04001/" -e "s/may/05001/" -e "s/jun/06001/" -e "s/jul/07001/" -e "s/aug/08001/" -e "s/sep/09001/" -e "s/oct/10001/" -e "s/nov/11001/" -e "s/dec/12001/") 
      done

  done

cd $here

