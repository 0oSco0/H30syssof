#!/bin/bash

isPrime(){
	#tmp=$((sqrt($number)))
	tmp=$(echo "sqrt($number)" | bc)
	#tmp=$(($number-1))
	for((i=2;i<$tmp;i++))do
		echo "$i"
		echo `expr $number % $i`
		#echo $(($number%$i))
		if [ $(($number%$i)) -eq 0 ];then
			return "Is not Prime"
		fi
	done;
	        return "Is Prime"
}

number=$1
isPrime
echo $?

