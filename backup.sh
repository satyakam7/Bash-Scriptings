#!/bin/sh
backup() {
  ls $1 | while read p; do
    if [[ -f $1/$p && ! -f $2/$p ]]
    then
      echo $3$p
      cp $1/$p $2/
    fi
    if [ -d $1/$p ]
    then
      if [ ! -d $2/$p ]; then
        mkdir $2/$p
      fi
      q=$3
      backup $1/$p $2/$p $q$p/
    fi
  done
}
echo Files copied from $1 to $2 are:
backup $1 $2
echo Files copied from $2 to $1 are:
backup $2 $1
