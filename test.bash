#!/bin/bash

tmp=/tmp/$$

###### Error Message ######

ERROR_EXIT () {
    echo "$1" >&2
    rm -f $tmp-*
    exit 1
}

ERROR_MINUS () {
   echo "Input value has minus value. Please check your input value."
}

ERROR_ZERO () {
   echo "Input value has 0 value. Please check your input value."
}


#########


### test 1 -- Minus value###
echo "Test1 -- Minus value"
echo -25 50 25 > $tmp-ans
./gcd.bash -25 50 > $tmp-out || ERROR_MINUS "TEST1-1"
diff $tmp-ans $tmp-out  || echo "exit 1" 


### test 2 -- Zero value###
echo "Test2 --Zero value"
echo 0 50 25 > $tmp-ans
./gcd.bash 0 50 > $tmp-out || ERROR_ZERO "TEST2-1"
diff $tmp-ans $tmp-out || echo "exit 1"

### test 3 -- Normal value## 
echo "Test3 --Positive value"
echo 12 24 12 > $tmp-ans
./gcd.bash 12 24 > $tmp-out || ERROR_OUT "TEST3-1"
diff $tmp-ans $tmp-out || echo "exit 1" 

echo OK
rm -f $tmp-*
exit 0

