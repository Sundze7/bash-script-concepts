#! /bin/bash
#simple calculator

echo Enter the first number
read x
echo Enter the second number
read y

sum=$((x+y))
diff=$((x-y))
mod=$((x%y))
quotient=$((x/y))

echo "The sum is ${sum}"
echo "The diff is ${diff}"
echo "The modulos is ${mod}"
echo "The quotient is ${quotient}"