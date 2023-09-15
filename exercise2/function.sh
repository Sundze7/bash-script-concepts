#! /bin/bash

# fxn with return value and param

Add( ) {
    sum=$[ $1 + $2 ]
    echo $sum
}

# Invoke the function
Add 15 35

# Capture the value returned
#ret=$?
ret=$(Add 30 30)

echo "The answer is $ret"