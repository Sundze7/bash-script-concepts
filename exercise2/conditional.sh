#!/bin/bash

# # 1. if-then-else

# read -p "Enter the value of x: " x
# read -p "Enter the value of y: " y

# if [[ $x -eq $y ]]; then
#     echo "x is equal to y"
# elif [[ $x -gt $y ]]; then
#     echo "x is greater than y"
# elif [[ $x -lt $y ]]; then
#     echo "x is less than y"
# elif [[ $x -ge $y ]]; then
#     echo "x is greater than or equal to y"
# else
#     echo "x is not equal to y"
# fi


# 2. while loop 

counter=0

while [ $counter -lt 5 ]; do
    echo "Counter: $counter"
    ((counter++))
done

echo "Loop finished"

# 3. until loop

# a=0
# until ![ "$a" -lt 10]; do
#  res=$((a + 6))
#  echo "$a + 6 = $res"
#  a=$((a+1))
# done

# a=0
# until [ "$a" -ge 10 ]; do
#     res=$((a + 6))
#     echo "$a + 6 = $res"
#     ((a++))
# done

# 4. Select loop

# echo "Do u want to change ur password"
# select x in "Yes" "No"
# do 
#     if [[ -n $x ]]; then
#     echo "Your ans is $X"
#     break
#     else
#     echo "You didn't select a proper option"
#     fi
# done