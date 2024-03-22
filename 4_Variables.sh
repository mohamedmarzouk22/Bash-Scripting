#!/opt/homebrew/Cellar/bash/5.2.26/bin/bash
#################################
# Created : 23-2-2024
# Code : variables; basic notes 

#################################


#---------------------------------
# Example No 1 : defining variables with spaces
#---------------------------------

<<com
Note: Do not leave any space between the variable name and its value
com

#  name = "Mohamed"   error : zsh: command not found: name

# name="Mohamed Marzouk "
# echo "My name is $name"



#---------------------------------
# Example No 2 : Controlling the variable name.
#---------------------------------

<<com
To print a variable without any space after it, enclose it within curly braces.
com

# echo "My name is ${name}Sobaih"



#---------------------------------
# Example No 3 : Modifying the value of the variable
#---------------------------------
# list=$(ls)
# echo $list
# list=$(pwd)
# echo $list
# list="MOHAMED"
# echo $list



#---------------------------------
# Example No 4 : How to create a constant variable?
#---------------------------------
# You can make a variable static by using the readonly keyword

readonly list=$(ls)
echo $list
list=$(pwd)
echo $list
list="MOHAMED"
echo $list  # will print the same output like last result

