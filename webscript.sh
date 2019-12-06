#!/bin/bash

###############################
#if input.txt DNE
#makefile
#put first arguement in first
#textbox
#git repository invite: https://github.com/JohnBonanno/rasberryPi/invitations
###############################

output=$1
if [ ! -e "./pg.html" ]; then 	#if no such file
touch pg.html				#makefile
chmod a+rw pg.html			#permission
echo "<html>" >> pg.html
echo "<head>" >> pg.html
echo "<title>" >> pg.html
echo "pi proj" >> pg.html
echo "</title>" >> pg.html
echo "</head>" >> pg.html
echo "<body>" >> pg.html
echo "<p1>" >> pg.html
echo "Welcome to the arduino moisture sensor data collection center" >> pg.html
echo "</p1>" >> pg.html
echo "<h1>" >> pg.html
echo "Type read to view average moisture in next 100 seconds" >> pg.html
echo "</h1>" >> pg.html
echo "<form action="./home/jab0629/pi/test.sh" method="POST">" >> pg.html
echo "<input type="text" name="f1" value="f1"" >> pg.html
echo "<br>" >> pg.html

echo "<input type="submit" value="Submit">" >> pg.html
echo "</body>" >> pg.html
echo "</html>" >> pg.html

chmod a+rw pg.html

else
#echo "true"
output=9,000
line="<input type=text name=f1  value=f1"
sed -i "13s/.*/${line}/" pg.html 
fi
