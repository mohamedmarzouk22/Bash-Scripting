#!/opt/homebrew/Cellar/bash/5.2.26/bin/bash
#################################
# Created : 1-3-2024
# Code : Multi-Line Comment 

#################################

#  Many times you have the situation to write multiple line comment in  your script so lets see how we can do that in bash 
# you can do using <<comment: method ! 
# Here is how to do 
<<comment
 "Code" or "Comments"
comment



#---------------------------------
# Example No 1 : How to write multi line comment ?
#---------------------------------
echo "Sample code"
x=4
if [[ $x -le 10 ]];then
    echo "Less than 10"
fi

<<com
echo"This doesn't echo"

echo"Even this doesn't"
com
echo "OK, this is echoing after <<com !"