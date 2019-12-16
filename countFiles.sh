#!/bin/sh
if [[ ($# -eq 2 || $# -eq 1) && -d $1 && -r $1 ]]
then
  if [ $# -eq 2 ]
  then
    var=$( ls $1/*$2 | wc -l )
  else
    var=$( ls -p $1 | grep -v / | wc -l )
  fi
  echo $var
else
  exit -1
fi
