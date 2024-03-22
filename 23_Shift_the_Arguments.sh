#!/opt/homebrew/Cellar/bash/5.2.26/bin/bash
#################################
# Created : 13-3-2024
# Code : Shift; shift positional parameters, facilitating iterative processing of command-line arguments within scripts

#################################

<<comment0
How to make shif for the arguments in bash scripts 
the shift command is used to manipulate positional arguments, not directly to "shift" the arguments themselves.


Functionality:

- Argument Shifting: 
shift removes the first positional argument ($1) from the list of arguments passed to the script.
- Subsequent Arguments Move Up: All subsequent arguments shift one position to the left.

Use case : Processing Multiple Arguments: shift is helpful when you need to process multiple arguments passed to your script one by one. You can use a loop and shift within the loop to iterate through each argument.

# IMP Consideratin
Once Shifted, Arguments Are Gone: Arguments removed by shift are no longer 
accessible later in the script.

comment0


##---------------------------------
## Example No 1 : Basic example without shift
##---------------------------------
# echo the first three arguemnts are $1 $2 $3


# # The Output 

# bash 23_shift_the_arguments.sh 1 2 3 4 5
# the first three arguemnts are 1 2 3

##---------------------------------
## Example No 2 : Basic example with shift
##---------------------------------

shift 2      
echo the first three arguemnts are $1 $2 $3


# The Output 

# bash 23_shift_the_arguments.sh 1 2 3 4 5
# the first three arguemnts are 3 4 5   


##---------------------------------
## Example No 3 : 
##---------------------------------




##---------------------------------
## Example No 4 : 
##---------------------------------



##---------------------------------
## Example No 5 : 
##---------------------------------


##---------------------------------
## Example No 6 : 
##---------------------------------



##---------------------------------
## Example No 7 : 
##---------------------------------