#!/bin/sh
sum=0
while read p; do
  num=`echo "$p" | cut -d ' ' -f 1`
  op=`echo "$p" | cut -d ' ' -f 2`
  case $op in
    "+") sum=`expr $sum + $num`;;
    "-") sum=`expr $sum - $num`;;
    "/") sum=`expr $sum / $num`;;
    "*") sum=`expr $sum \* $num`;;
  esac
done < $1
echo $sum
