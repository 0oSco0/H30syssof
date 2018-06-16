#!/bin/bash
tmp=/tmp/$$
ERROR_EXIT () {
echo "$1" >&2
rm -f $tmp-*
exit 1
}
	#############
	# TEST case #
	#############
echo "Is Prime" > $tmp-ans
./kadai3/17745205.sh 113 > $tmp-out || ERROR_EXIT "TEST 113 input"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST 113 output"

echo "Prime OK"
rm -f $tmp-*

echo "Is not Prime" > $tmp-ans
./kadai3/17745205.sh 6 > $tmp-out || ERROR_EXIT "TEST 6 input"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST 6 output"

echo "Not Prime OK"
rm -f $tmp-*

echo "Zero And One Is not Prime" > $tmp-ans
./kadai3/17745205.sh 0 > $tmp-out || ERROR_EXIT "TEST 0 input"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST 0 output"
./kadai3/17745205.sh 1 > $tmp-out || ERROR_EXIT "TEST 1 input"
diff $TMP-ans $Tmp-out || ERROR_EXIT "TEST 1 output"

echo "0 OK"
rm -f $tmp-*

exit 0
