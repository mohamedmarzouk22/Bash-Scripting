#!/opt/homebrew/Cellar/bash/5.2.26/bin/bash
#################################
# Created : 13-3-2024
# Code : getopts; parse and handle command-line options and arguments, enabling robust and user-friendly script interaction

#################################

<<comment0

* getopts is a powerful builtin command in bash used for parsing command-line arguments in a script, making your scripts more user-friendly and robust. 
* getopts works within a loop to process options one by one.

Functionality:

- Option Parsing: 
getopts iterates through command-line arguments, identifying options (flags prefixed with a hyphen '-') 
and their associated values (arguments that follow certain options).

- Variable Assignment: 
It assigns the current option letter to a variable you specify (usually opt or var). 
It also sets another special variable, OPTARG, which holds the value provided with the current option (if applicable).

The Syntax:

getopts "option_string" variable

* option_string: This string defines the valid options your script can accept.
 How to specify options within the string :
   -  Single character option (e.g., -v): Include the character directly in the string.
   -  Option with required argument (e.g., -x <value>): Append a colon (:) to the option character.
   -  Option with optional argument (e.g., -y [value]): Append a colon followed by a space (:) to the option character.
   -  variable: This variable stores the current option letter being processed within the loop.

   - example : while getopts "x:yz" opt 
   --> The indecates 
            -x: Requires an argument.
            -y: Does not require an argument.
            -z: Can optionally take an argument.

comment0


##---------------------------------
## Example No 1 : Basic example 
##---------------------------------

# function usage() {
#          echo "To use this script : $0 [-x <options>] [-y] [ -z <options>]"

#         }

# while getopts "x:yz:" var

#     do
#         case $var in
#             x)echo "The value of x is : ${OPTARG}"
#             ;;
#             y)echo "There is no value"
#             ;;
#             z)echo "The value of z is : ${OPTARG}"
#             ;;
#             *) usage                             
#             echo "Invalid arguments"  
#         esac

#     done


## The output 

# right arguments :
# ----------------
# bash 22_GetOptions.sh -x "Medo" -y -z "Ali baba"
# The value of x is : Medo
# There is no value
# The value of z is : Ali baba

# Wrong arguments :
# ----------------

# bash 22_GetOptions.sh -m
# 22_GetOptions.sh: illegal option -- m
# To use this script : 22_GetOptions.sh [-x <options>] [-y] [ -z <options>]
# Invalid arguments

##---------------------------------
## Example No 2 : Make the example more comprohensive 
##---------------------------------


# function usage() {
#          echo "To use this script : $0 [-x <Name>] [-y <Major>] [ -z <Age>]"

#         }

# while getopts "x:y:z:" var

#     do
#         case $var in
#             x)echo "The student name is : ${OPTARG}"
#             ;;
#             y)echo "The major of student is : ${OPTARG}"
#             ;;
#             z)echo "The student age is : ${OPTARG}"
#             ;;
#             *) usage                             
#             echo "Invalid arguments"  
#         esac

#     done      


## The output

# bash 22_GetOptions.sh -x "Mohamed" -y "Physics" -z 36
# The student name is : Mohamed
# The major of student is : Physics
# The student age is : 36


##---------------------------------
## Example No 3 : Using different options 
##---------------------------------



function usage() {
         echo "To use this script : $0 [-x <Name>] [-y ] [ -z ]"

        }

while getopts "x:y:z:" var

    do
        case $var in
            x)echo "The student name is : ${OPTARG}"
            ;;
            y)echo "This is optional"
            ;;
            z)echo "This is optional"
            ;;
            *) usage                             
            echo "Invalid arguments"  
        esac

    done     



# The output 

# bash 22_GetOptions.sh -x "Mohamed" -y "Physics" -z 36
# The student name is : Mohamed
# This is optional
# This is optional


##---------------------------------
## Example No 4 : 
##---------------------------------



##---------------------------------
## Example No 5 : 
##---------------------------------

