#!/bin/bash

###############################
#if input.txt DNE
#makefile
#put first arguement on first
#line of input.txt
###############################

output=23
if [ ! -e "./pg.html" ]; then 	#if no such file
touch pg.html				#makefile
chmod a+rw pg.html			#permission
echo "<html>" >> pg.html
echo "<head>" >> pg.html
echo "pi proj" >> pg.html
echo "</head>" >> pg.html
echo "<body>" >> pg.html
echo "<p1>" >> pg.html
echo "Welcome to the arduino moisture sensor data collection center" >> pg.html
echo "</p1>" >> pg.html
echo "<h1>" >> pg.html
echo "Type read to view average moisture in next 100 seconds" >> pg.html
echo "</h1>" >> pg.html
echo "<form action="/moisture-runner" method="update">" >> pg.html
echo "<input type="text" name="input" value="$output"" >> pg.html
echo "<br>" >> pg.html

echo "<input type="submit" value="Submit">" >> pg.html
echo "</body>" >> pg.html
echo "</html>" >> pg.html
fi
chmod a+rw pg.html

#if [ -e "./pg.html" ]; then 	#else if file exist

#output=24
#line="echo "<input type="submit" value="${output}">" >> pg.html"
#sed -i "28s/.*/$line/" pg.html	#put 24 in line
#
