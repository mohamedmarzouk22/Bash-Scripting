#!/opt/homebrew/Cellar/bash/5.2.26/bin/bash
#################################
# Created : 9-3-2024
# Code : String; Manipulating and analyzing textual data

#################################

<<com
We will see how to compare two strings together 
you can use the one or two brackets like this 

[ "$var1" = "$var2" ]  or [[ "$var1" ==  "$var2" ]]

Note that : double brackets then == 
com


#---------------------------------
# Example No 1 : Simple way to compare two strings 
#---------------------------------

# var1="Linux"
# var2="Linux"

# if [ "$var1" = "$var2" ]
# then
#   echo "Strings are Equals"
# else
#   echo "Strings are not Equals"
# fi

#---------------------------------
# Example No 2 : Same as previous example but two brackets 
#---------------------------------

# var1="Linux"
# var2="NotLinux"

# if [[ "$var1" == "$var2" ]]
# then
#   echo "Strings are Equals"
# else
#   echo "Strings are not Equals"
# fi


#---------------------------------
# Example No 3 : You can apply the same for two inputs from user 
#---------------------------------

# read -p "Enter First Strings : " var1
# read -p "Enter Second Strings : " var2

# if [[ "$var1" == "$var2" ]]
# then
#   echo "Strings are Equals"
# else
#   echo "Strings are not Equals"
# fi


#---------------------------------
# Example No 4 : Substring; or slice the string 
#---------------------------------
# To check if a string contains a substring using regular expression

# var='GNU Linux is an operating system'
# if [[ $var == *"Linux"* ]]
#     then
#       echo "Yes the string contains this part "
# else
#      echo "No, the string does not contain this part" 
# fi



#---------------------------------
# Example No 5 : Do the substring using regular expression 
#---------------------------------
<<comment
to use regular expression you have to use -->   =~  <regular expresion >
comment


# var='GNU Linux is an operating system'
# if [[ $var =~ .*Linux.* ]]
#     then
#       echo "Yes the string contains this part "
# else
#      echo "No, the string does not contain this part" 
# fi


#---------------------------------
# Example No 6 : option  -z  with the string
#---------------------------------

<<comment2
The [[ -z $var ]] condition is used to check if the variable var is empty.
If the condition inside the if statement is true (i.e., the length of the string in var is zero)

comment2

# var=''
# if [[ -z $var ]]
#     then
#         echo "Length of the string is Zero"
# else
#     echo "Length of the string is Non-Zero"
# fi





#---------------------------------
# Example No 7 : option  -n with the string; opposite to -z 
#---------------------------------


<<comment3

The [[ -n $var ]] condition is used to check if the variable var is notempty.
If the condition inside the if statement is true (i.e., the length of the string in var is not zero)

comment3

# var='this string not zero'
# if [[ -n $var ]]
#     then
#         echo "Length of the string is Not Zero"
# else
#     echo "Length of the string is Zero"
# fi



#---------------------------------
# Example No 8 : Let's see matching fo string with different patterns 
#---------------------------------


# string='abc'
# pattern1='a*'
# pattern2='x*'

# if [[ $string == $pattern1 ]];  then
#   echo "The String $string matches the pettern $pattern1"
# fi


#---------------------------------
# Example No 9 : Let's try not equal 
#---------------------------------

# string='abc'
# pattern1='a*'
# pattern2='x*'

# if [[ $string != $pattern2 ]];  then
#   echo "The String $string does not matche the pettern $pattern2"
# fi


#---------------------------------
# Example No 10 : Compare two strings by greater than; the value here calculated form ASCII code values 
#---------------------------------


# var1="Linux"  # check each letter in the string how is its value in the ASCII code sheet 
# var2="Ubuntu"

# if [[ $var1 > $var2 ]]
#     then
#         echo "$var1 is greater than $var2"
# elif [[ $var2 > $var1 ]]    
#     then
#         echo "$var2 is greater than $var1"    
# else
#     echo "$var1 \& $var2 are equal "
# fi



#---------------------------------
# Example No 11 : To know the string length 
#---------------------------------

string="Mohamed Marzouk"
echo "The length of this string; $string is ${#string}"
