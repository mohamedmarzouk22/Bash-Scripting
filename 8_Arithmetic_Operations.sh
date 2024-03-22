#!/opt/homebrew/Cellar/bash/5.2.26/bin/bash
#################################
# Created : 8-3-2024
# Code :  Arithmetic Operations; Performing mathematical calculations and operations on numerical data

#################################

<<com
There are ... methods to do the arithmetic operations 
1) Using  $((  ))
2) Using expr <write your expresion>
3) Using let <write your expresion>
com


# 1)  Arithmetic Operations Using $((  ))
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@


#---------------------------------
# Example No 1 : Basic arithmetic operation
#---------------------------------
<<comment1
The basic way to apply the arithmetic operation is using the 
brackets like that $((  ))
comment1

# result=$((3+7))
# echo $result



#------------------------------------------------------
# Example No 2 : Apply for any two inputs from the user 
#------------------------------------------------------
<<comment2
We can show message for the user and take the inputs one by one or at take the variables as arguments 
comment2

# read -p "Please Enter Your First Number: " var1

# read -p "Please Enter Your Second Number: " var2

# echo "The sum of $var1 and $var2 is: $((var1 + var2))"
# echo "The difference of $var1 and $var2 is: $((var1 - var2))"
# echo "The product of $var1 and $var2 is: $((var1 * var2))"
# echo "The quotient of $var1 and $var2 is: $((var1 / var2))"
# echo "The remainder of $var1 divided by $var2 is: $((var1 % var2))"
# echo "The power of $var1 to $var2 is: $((var1 ** var2))"


#------------------------------------------
# Example No 3 : Lets take the inputs as arguments without any messages
#------------------------------------------


# var1=$1
# var2=$2

# echo "The sum of $var1 and $var2 is: $((var1 + var2))"
# echo "The difference of $var1 and $var2 is: $((var1 - var2))"
# echo "The product of $var1 and $var2 is: $((var1 * var2))"
# echo "The quotient of $var1 and $var2 is: $((var1 / var2))"
# echo "The remainder of $var1 divided by $var2 is: $((var1 % var2))"
# echo "The power of $var1 to $var2 is: $((var1 ** var2))"



#---------------------------------
# Example No 4 : Let's apply the increment 
#---------------------------------


# var1=5
# var2=8

# result1=$((++var1 + 2))
# result2=$((var2++ + 2))

# echo $result1  #8
# echo $result2  #10

# echo $var1  #6
# echo $var2  #9


<<comment3
In result1=$((++var1 + 2)), the value of var1 is first incremented to 6, 
then 6 is added to 2, and the result (8) is assigned to result1.

In result2=$((var2++ + 2)), the value of var2 is first used 
(which is 8), then 8 is added to 2, and the result (10) is 
assigned to result2. However, var2 itself is incremented
 to 9 after this line is executed.
comment3



# 2)  Arithmetic Operations Using expr 
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
<<comment4
When use this expr to apply any arithmetic operation or any general code, we have to take care of two main points 
1) add the expression between two  backticks like this  
echo `expr 5 - 3`
2) when use multiplication * add backslach 
echo `expr 5 \* 3`
comment4


#---------------------------------
# Example No 5 : apply the expr with input message 
#---------------------------------

# read -p "Please Enter Your First Number: " var1

# read -p "Please Enter Your Second Number: " var2

# echo "The sum of $var1 and $var2 is:              `expr $var1 + $var2`   "
# echo "The difference of $var1 and $var2 is:       `expr $var1 - $var2`   "
# echo "The product of $var1 and $var2 is:          `expr $var1 \* $var2`   "
# echo "The quotient of $var1 and $var2 is:         `expr $var1 / $var2`   "
# echo "The remainder of $var1 divided by $var2 is: `expr $var1 % $var2`   "
   

#---------------------------------
# Example No 6 : Let's take arguments from user 
#---------------------------------

# var1=$1
# var2=$2

# echo "The sum of $var1 and $var2 is:              `expr $var1 + $var2`   "
# echo "The difference of $var1 and $var2 is:       `expr $var1 - $var2`   "
# echo "The product of $var1 and $var2 is:          `expr $var1 \* $var2`   "
# echo "The quotient of $var1 and $var2 is:         `expr $var1 / $var2`   "
# echo "The remainder of $var1 divided by $var2 is: `expr $var1 % $var2`   "


#---------------------------------
# Example No 7 : We can add the expression itself as variable
#---------------------------------

# var1=$1
# var2=$2
# sum=$(expr $var1 + $var2)
# difference=$(expr $var1 - $var2)
# product=$(expr $var1 \* $var2)
# quotient=$(expr $var1 / $var2)
# remainder=$(expr $var1 % $var2)

# echo "The sum of $var1 and $var2 is:              $sum  "
# echo "The difference of $var1 and $var2 is:       $difference   "
# echo "The product of $var1 and $var2 is:          $product   "
# echo "The quotient of $var1 and $var2 is:         $quotient   "
# echo "The remainder of $var1 divided by $var2 is: $remainder   "


#---------------------------------
# Example No 8 : Options in expr; length, index, substr
#---------------------------------
<<comment5
There are many options that you can use with expr such as : 
- length : to get the the number of char of certain string 
- index : to get info about the number of char in the string 
- substr : to slice your string and cut for certain part 
comment5

# var="MohamedMarzouk"
# echo `expr length " $var"`

#TODO LATER this code give an error ? 

# The answer 
# expr is not part of bash -- it's an ancient UNIX tool from back when the shell couldn't do math (or much else useful) on its own.

# var="MohamedMarzouk"
# string_length=$(expr length "$var")  
# echo "The length of the string '$var' is: $string_length"




#---------------------------------
# Example No 9 : 
#---------------------------------

<<comment6
We can use many expression here such as 

ARG1 | ARG2  (OR)  ARG1 if it is neither null nor 0, otherwise ARG2
ARG1 & ARG2  (AND) ARG1 if neither argument is null or 0, otherwise 0
ARG1 < ARG2  check if ARG1 lower than ARG2
ARG1 <= ARG2    check if ARG1 lower than or equal ARG2 
ARG1 = ARG2     check if ARG1 equal ARG2
ARG1 != ARG2    check if ARG1 not equal ARG2
ARG1 >= ARG2    check if ARG1 greater than or equal ARG2

comment6

 
# var1=$1
# var2=$2

# echo "The OR of $var1 and $var2 is:  `expr $var1 \| $var2` "
# echo "The AND of $var1 and $var2 is:  `expr $var1 \& $var2` "
# echo "The equal of $var1 and $var2 is:  `expr $var1 \= $var2` "
# echo "The unequal of $var1 and $var2 is:  `expr $var1 \!= $var2` "
# echo "The less than of $var1 and $var2 is:  `expr $var1 \< $var2` "
# echo "The less than or equal of $var1 and $var2 is:  `expr $var1 \<= $var2` "
# echo "The greater than of $var1 and $var2 is:  `expr $var1 \> $var2` "
# echo "The greater than or equal of $var1 and $var2 is:  `expr $var1 \>= $var2` "




#---------------------------------
# Example No 10 : How to do arithemtic options with float numbers ?
#---------------------------------
<<comment7
bc --> allows the shell script to perform calculations with 
decimals and provide more accurate results
comment7

# var1=$1
# var2=$2

# resultsum=`echo $var1 + $var2 | bc`
# echo "Summation of the two numbers is : $resultsum"

# echo "Subraction of the two numbers is : `echo $var1 - $var2 | bc`"
# echo "Multiplication of the two numbers is : `echo $var1 \* $var2 | bc`"
# echo "quotient of the two numbers is : `echo $var1 / $var2 | bc`"



# 3)  Arithmetic Operations Using let 
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
<<comment8

comment8
#---------------------------------
# Example No 11 : Lets try let method to do arithmetic operations
#---------------------------------

# let var1=$1  # 5
# let var2=$2  # 5 
# let var1++
# let var2--

# echo "Variable 1 : $var1"   # 6 
# echo "Variable 2 : $var2"   # 4



#---------------------------------
# Example No 12 : We can put variables in double quotes 
#---------------------------------

let "var1=$1"  var2=$2

let var1++
let var2--

echo "Variable 1 : $var1"   # 6 
echo "Variable 2 : $var2"   # 4


#---------------------------------
# Example No 13 : 
#---------------------------------



