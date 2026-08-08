#!/bin/bash
num1=100
num2=sai

sum=$((num1 + num2))
echo "The sum of $num1 and $num2 is: $sum"


#Array - list of values
fruits=("apple" "banana" "cherry")

echo "fruits are: ${fruits[@]}"
echo "First fruit is: ${fruits[0]}"
echo "Second fruit is: ${fruits[1]}"
echo "Third fruit is: ${fruits[2]}"