#!/opt/homebrew/Cellar/bash/5.2.26/bin/bash
#################################
# Created : 12-3-2024
# Code :  Functions; reducing repetition by encapsulating reusable code segments

#################################

<<comment0

- We use function to not repeate ourself in the code 

- You can define functions anywhere in your Bash script, but it's generally 
considered good practice to place them at the beginning of the script.


The function syntac in bash is : 

function_name () {
  # Function body
  commands
}


Or 

function function_name () {
  # Function body
  commands
}

comment0


##---------------------------------
## Example No 1 : Simple summation function 
##---------------------------------

##Read data from user
# read -p "Please enter the first number : " number1
# read -p "Please enter the second number : " number2

# summation(){
#   sum=$(($number1 + $number2))
#   echo "The summation of the two numbers : $sum"
# }

# summation  # you have to call the function to work 



##---------------------------------
## Example No 2 : Simple function with arguments
##---------------------------------

# print(){
#   echo "***** Student Information ****** "
#   echo "Name: $1 "
#   echo "Age: $2 "
#   echo "Gender : $3 "  
#   }

# print "Mohamed Marzouk" 36 Male

# name="Ali Ahmed"
# print "$name" 36 Male  # adding the variable between two doble quotes makes it read if two parts and space between them 


##---------------------------------
## Example No 3 : Access all arguments of function by $@
##---------------------------------

# print(){
#   echo "***** Student Information ****** "
# #   echo "Name: $1 "
# #   echo "Age: $2 "
# #   echo "Gender : $3 "  
# for i in "$@"
#     do 
#     echo "The argument is : $i"
#     done
#   }

# name="Ali Ahmed"
# print "$name" 36 Male 



# If you define variable in function it will golbale in and out the function 
# so if you need only the variable to be inside the function use local 

##---------------------------------
## Example No 4 : 
##---------------------------------


# greet(){
#    name=$1
#   echo "Hello form inside the function: $name"
# }

# name="SecurityJordan"
# greet "Osama Sbeih"

# echo "Hello form outside the function:  $name"

## Note :  after you run the function the name became globally 



##---------------------------------
## Example No 5 : 
##---------------------------------

# greet(){
#    local name=$1
#   echo "Hello form inside the function: $name"
# }

# name="Security Jordan"
# greet "Osama Sbeih"

# echo "Hello form outside the function:  $name"


##---------------------------------
## Example No 6 : defualt values of the arguments using  ":-"
##---------------------------------

# any_function(){
#     local var=${1:-50} # This means give the first variable a default value 50
#     echo "Your varialbe value is : $var "
# }

# any_function 10  # 10 
# any_function    # 50 as this is the default  

##---------------------------------
## Example No 7 : another example for default values 
##---------------------------------

# print(){
#   echo "***** Student Information ****** "
# name=${1:-"Null"}
# age=${2:-"Null"}
# gender=${3:-"Null"}
# echo "The name is : $name "
# echo "The age is : $age "
# echo "The gender is : $gender "  
# }


# print

##The output 

# ***** Student Information ******
# The name is : Null
# The age is : Null
# The gender is : Null

##---------------------------------
## Example No 8 : Let's make it more informative and show some messages  ":?"
##---------------------------------


# print(){
#   echo "***** Student Information ****** "
# name=${1:?"Please insert the name"}
# echo "The name is : $name "
# }

# print

<<comment3
If you call print with no argument (like print), the first argument ($1) will be empty. 
In this case, the conditional operator (?) kicks in and assigns the default value 
"Please insert the name" to the name variable. This also displays an error message 
to the user prompting them to enter a name.
comment3

##---------------------------------
## Example No 9 : Write function by adding function at the begining 
##---------------------------------

# function my_name(){
#     echo "My name is Mohamed Marzouk"
# }
# my_name 


# in this syntax we can remove the () after the function name

# function my_name {
#     echo "My name is Mohamed Marzouk"
# }
# my_name  # My name is Mohamed Marzouk


##---------------------------------
## Example No 10 : Let's take the function's argument directly from the user 
##---------------------------------


# student_info(){
#   echo "***** Student Information ****** "
#   echo "Name: $1 "
#   echo "Age: $2 "
#   echo "Gender : $3 "  
#   }
 
# student_info "$1" $2  $3



##---------------------------------
## Example No 11 : 
##---------------------------------

# function summation
# {
#     sum=$(( $1 + $2 ))
#     return $sum
# }

# number1=15
# number2=20
# summation $number1 $number2

# var=$?   # this part $? to store the last returned value 
# echo "The summation of the two varialbe : $var"

<<comment 
Capturing the return value: The $? special variable captures 
the exit status of the last executed program. 
comment 

##---------------------------------
## Example No 12 : To understand deeply the store for the last returned value 
##---------------------------------

function summation
{
    sum=$(( $1 + $2 ))
    return $sum
}

number1=15
number2=20
summation $number1 $number2
echo "The first summation : $?"
number1=40
number2=20
summation $number1 $number2
echo "The second summation : $?"




##---------------------------------
## Example No 13 : 
##---------------------------------