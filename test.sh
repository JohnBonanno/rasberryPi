#!/bin/bash

printf "Content-Type: text/html\r\n\r\n"
echo "<pre>"
read line
echo "$line"

echo "</pre>"
