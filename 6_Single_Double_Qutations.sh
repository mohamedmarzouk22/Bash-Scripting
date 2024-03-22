#!/opt/homebrew/Cellar/bash/5.2.26/bin/bash
#################################
# Created : 2-3-2024
# Code :  The Difference Between Single and Double and Reverse Quotation

#################################

<<comment0
In bash scripting, when you use double quotes, you can interpolate 
variables inside them. However, when you use single quotes, 
variable interpolation is not allowed; instead, you must 
use the backtick symbol
comment0


#---------------------------------
# Example No 1 : What is the difference between single and double quotation marks?
#---------------------------------

<<comment1
Variables within double quotation marks are expanded.
Variables within single quotation marks are not expanded; they are treated as literal strings.
comment1

# First_name=$1
# Last_name=$2
# echo "Welcome , $First_name $Last_name"
# echo 'Welcome , $First_name $Last_name'

#---------------------------------
# Example No 2 : another example show the problem of single quotation 
#---------------------------------
# Here I want to print it as  $3.00JD not as varible with double quotation 

# First_name=$1
# Last_name=$2
# echo "$3.00JD"
# echo '$3.00JD'

#---------------------------------
# Example No 3 : use escape with double quotations 
#---------------------------------

# First_name=$1
# Last_name=$2
# echo "\$3.00JD"
# echo '$3.00JD'


#---------------------------------
# Example No 4 : Using the reverse quotation 
#---------------------------------
<<comment2
The primary purpose of the backtick symbol (\`) is to execute 
a command within double quotes and embed its output 
directly into the surrounding text
comment2

echo "The current dirctory is : `pwd`"