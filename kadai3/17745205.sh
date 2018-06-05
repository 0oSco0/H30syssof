isPrime(){
	#tmp=$((sqrt($number)))
	#tmp=$(echo "sqrt($number)" | bc)
        tmp=$(echo "$number" | awk '{printf"%d",sqrt($1)}')
	echo "sqrt" $tmp
	for((i=2;i<$tmp;i++))do
		#echo $i `expr $number % $i`
		echo $i  $(($number%$i))
		if [ $(($number%$i)) -eq 0 ];then
			return 0
		fi
	done;
	        return 1
}

number=$1
isPrime
if [ $? == 0 ];then
	echo "Is not Prime"
else
	echo "Is Prime"
fi



