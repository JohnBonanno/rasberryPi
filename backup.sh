#!/bin/bash

###############################
#if input.txt DNE
#makefile
#put first arguement on first
#line of input.txt
###############################
piInput=88

if [ ! -e "./input.txt" ]; then 	#if no such file
touch input.txt				#makefile
chmod 700 input.txt			#permission
echo $1 >> input.txt			#write first cmdline arg to file

elif [ -e "./input.txt" ]; then 	#else if file exist
sed -i "1s/.*/$piInput/" input.txt	#put piInput in first line
fi					#EOF





