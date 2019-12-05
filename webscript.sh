#!/bin/bash

###############################
#if input.txt DNE
#makefile
#put first arguement on first
#line of input.txt
###############################

if [ ! -e "./input.txt" ]; then 	#if no such file
touch input.txt				#makefile
chmod 700 input.txt			#permission
echo $1 >> input.txt			#write first cmdline arg to file

elif [ -e "./input.txt" ]; then 	#else if file exist
sed -i "1s/.*/$1/" input.txt		#put firstarg in first line
fi					#EOF
