#!/bin/bash

dir=`find $1 -type d`
# dont delete if there are less than 100 files
min=100

for d in $dir; do
  files=($d/*)
  numfiles=${#files[@]}
  i=0
  for f in $d/*; do 
    if [ $i -gt $min ]; then
      echo "removing" $f
      rm $f
    fi
    ((i++))
  done
  echo $d
done
