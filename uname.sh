#!/bin/sh
if [ $# != 2 ]
then
  exit -1
fi
while read p; do
  num=`echo "$p" | tr -cd ':' | wc -c`
  if [ $num != 6 ]
  then
    exit -1
  fi
done < $1
grep ^$2: $1 | cut -d ':' -f 5
