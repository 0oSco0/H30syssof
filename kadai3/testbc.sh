#! /bin/bash
number=$1
tmp=$(echo "sqrt($number)" | bc)
echo $tmp
tmpp=$((sqrt($1)))
echo $tmpp
tmppp=`expr $number % $tmp`
echo $tmppp
tmpppp=$(($number%$tmp))
echo $tmpppp
#echo "scale=3;sqrt($1)"|bc

