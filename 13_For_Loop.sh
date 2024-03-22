#!/opt/homebrew/Cellar/bash/5.2.26/bin/bash
#################################
# Created : 10-3-2024
# Code : For Loop; facilitate repetitive execution of commands or actions over a defined range or list

#################################

<<comment0
The syntax of a For loop:

for variable_name in list; do
  commands<statement to be repeated>
done

- You can use special variables inside the loop. 
- Loops can be nested to create more complex control flow.


There are different ways to constract for loop : 

1) - Extended brace expansion :  for {1..10..1}   --> {start..end..step}
However, this syntax is not natively supported by all Bash versions. 
zsh natively supports the syntax, and it expands the sequence within the curly braces 
** This explain why? this expansion not working on my iMac bash but working on zsh 
*** I found that on my iMac accept {1..10}  but not {1..10..1}, so no steps 
** Two days later : I found that iMac has defult version of bash then updated and it works all things as zsh 



2) - C-style for loop construct : for (( ; ; ))

 
3) - seq for loop construct : \$(seq 1 2 100)  -->  \$(seq start step end)  

comment0




##1) - Extended brace expansion :  for {1..10..1}
##@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

#---------------------------------
# Example No 1 : Basic for loop; Iterating over a numerical range
#---------------------------------

# Note : This way not working on my iMac bash shell but working on zsh 

# for i in {1..10}
#   do 
#     echo "The number is : $i "
# done

## We can do the same code in one line using ; semicolon 

# for i in {1..10}; do echo "The number is : $i " ;  done


#---------------------------------
# Example No 2 : The very basic way 
#---------------------------------

# for i in 1 2 3 20 40 
#   do
#     echo "The number is : $i"
#   done 


#---------------------------------
# Example No 3 : Let's list all the files in the directory 
#---------------------------------


# for i in *    # here this is mean all files 
#   do
#     echo "The file is : $i"
#   done 





#---------------------------------
# Example No 4 : Iterating over a list of files:
#---------------------------------

# for file in *.sh; do
#    echo "Processing file: $file"
#   # Add commands to process each file here
# done



##---------------------------------
## Example No 5 : Using if statement with for loop 
##---------------------------------

#  I could oot use steps here due to the bash issue I mentioned up {1..100..2}

# for i in {1..100}
#   do 
#     if [[ $i -le 10  ]]
#       then 
#           echo "The nuber is : $i" 
#     fi
#   done



##2) - C-style for loop construct : for (( ; ; ))
##@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

#---------------------------------
# Example No 6 : Basic for loop; Iterating over a numerical range
#---------------------------------

# for (( i=1; i<=10; i++))
#   do 
#     echo "The number is : $i "
# done


#---------------------------------
# Example No 7 : You may want the program to rest every cycle 
#---------------------------------

# for (( i=1; i<=10; i++))
#   do 
#     echo "The number is : $i "
#     sleep 3    # this is sec unit 
# done



#---------------------------------
# Example No 8 : Application to print even numbers 
#---------------------------------


# for (( i=1; i<=100; i++))
#   do 
#       if [[ $((i%2)) -eq 0 ]]
#       then
#           echo "Number : $i is even"
#       fi
# done


#---------------------------------
# Example No 9 : Application to print odd numbers 
#---------------------------------


# for (( i=1; i<=100; i++))
#   do 
#       if [[ $((i%2)) -eq 1 ]]
#       then
#           echo "Number : $i is odd"
#       fi
# done



#---------------------------------
# Example No 10 : Using continue with for loop 
#---------------------------------

# for (( i=1; i<=100; i++))
#   do 
#       if [[ $((i%2)) -eq 1 ]]
#          then
#          continue
#          fi
#      echo "Number : $i is even"
      
# done



#---------------------------------
# Example No 11 : Using break with for loop 
#---------------------------------

# for (( i=1; i<=100; i++))
#   do 
#       if [[ $i -eq 5 ]]
#          then
#          break
#          fi
#      echo "Number : $i"
      
# done

## output 
## Number : 1
## Number : 2
## Number : 3
## Number : 4


#---------------------------------
# Example No 12 : Decriemnt with For loop 
#---------------------------------


# for (( i=15; i>=10; i--))
#   do 
#     echo "The number is : $i "
# done




##3) - seq for loop construct :  $(seq 1 2 100)
##@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@


#---------------------------------
# Example No 13 : basic example for seq as counter
#---------------------------------

# for i in $(seq 1 2 100); do
#   echo "The number is : $i"
# done





## Let's do some loops for string 
##@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

#---------------------------------
# Example No 14 : Let's do for loop over a string
#---------------------------------

# string="You can not go back to make a new start, but you can start now to make a new end"

# for i in $string
#   do
#     echo "The word : $i "

# done


#---------------------------------
# Example No 15 : What if the seprator is - not space ? 
#---------------------------------

# string="You-can-not-go-back-to-make-a-new-start,-but-you-can-start-now-to-make-a-new-end"

# for i in $string
#   do
#     echo "The word : $i "

# done

## The output will be 
# The word : You-can-not-go-back-to-make-a-new-start,-but-you-can-start-now-to-make-a-new-end


#---------------------------------
# Example No 16 : Using IFS to chage the seprator 
#---------------------------------

<<comment1
** The IFS (Internal Field Separator) is a special variable in Bash scripting that plays a crucial 
role in how the shell splits a string into separate fields (words or tokens). 
It defines the characters used to mark the boundaries between these fields.

** Default IFS Value:

By default, the IFS variable is set to a combination of three characters:

Space ()
Tab (\t)
Newline (\n)

This means that any of these characters within a string will be considered 
a word separator when the shell parses the string.

** In this case, the hyphen (-) or (:) is treated as part of the word 
because it's not one of the default IFS characters. then you have to customizing the IFS

Customizing IFS:
You can change the value of IFS to suit your needs.

example ) new_ifs=":"  # Set IFS to colon (:)
           string="hello:world:how:are:you?"

comment1


# string="You-can-not-go-back-to-make-a-new-start,-but-you-can-start-now-to-make-a-new-end"
# IFS="-"
# for i in $string
#   do
#     echo "The word : $i "

# done
