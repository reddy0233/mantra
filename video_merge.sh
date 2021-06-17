#!/bin/bash

input1=$1
input2=$2
output=$3


validate1=$(ls -all | grep input1 $input1 | wc -l)

validate2=$(ls -all | grep input1 $input2 | wc -l)


if [ $validate1 -eq 0 || $validate2 -eq 0 ]; 
then
	echo "given input is error"
else
	echo "given input is valid"
fi

ffmpeg -i concat:"$input1|$input2" $output
