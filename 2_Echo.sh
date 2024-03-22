#!/opt/homebrew/Cellar/bash/5.2.26/bin/bash

#################################
# Created : 23-2-2024
# Code : echo; write two echo in the same line

#################################

<<com
The default behavior of the echo command is to write output on separate lines. 
If you intend to use two echo commands and display their output on the same line, 
you can achieve this by using the -n flag.
com

echo -n "This is first line"
echo -n " and this is second line"
echo -n " and this is 3rd line"
echo  " this is fourth line" 
echo " The last line " 
