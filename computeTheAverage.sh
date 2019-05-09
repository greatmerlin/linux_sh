#! /bin/bash

# Given N integers, compute their average correct to three decimal places. 

read numbers

arr=($(cat)) 
arr=${arr[*]}

printf "%.3f" $(echo $((${arr// /+}))/$numbers | bc -l)
