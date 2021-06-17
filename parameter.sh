#!/bin/bash
var1=$1
var2=$2
var3=$3
if [ -z "$var1" ] || [ -z "$var2" ] || [ -z "$var3" ];
then
echo "The variables are not defined";
else
echo "The variables are defined"
fi
