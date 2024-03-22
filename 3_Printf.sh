#!/opt/homebrew/Cellar/bash/5.2.26/bin/bash
#################################
# Created : 23-2-2024
# Code :  printf; writing two echo commands on separate lines

#################################


<<com
The default behavior of printf differs from echo in that printf 
does not automatically separate output onto multiple lines. 
To achieve line separation using printf, you can include the 
newline character \n in your format string
com

#---------------------------------
# Example No 1 : The default usage of printf
#---------------------------------

# printf  "This is first line"
# printf  " and this is second line"
# printf  " and this is 3rd line"

#---------------------------------
# Example No 2 : Print on two separate lines by adding \n 
#---------------------------------

printf  "This is first line\n"
printf  " and this is second line"
printf  "\nand this is 3rd line"