#!/opt/homebrew/Cellar/bash/5.2.26/bin/bash
#################################
# Created : 10-3-2024
# Code : While loops; enable iterative execution of commands or actions based on a specified condition, facilitating dynamic and flexible automation

#################################

<<comment0

The syntax of a While loop is :

while [ condition ]; do
  commands<statement to be repeated>
done

The loop continues to execute the commands within the do block as long as the condition evaluates to true.
Once the condition becomes false, the loop terminates, and the script continues execution with the code following the done statement.

comment0





#---------------------------------
# Example No 1 : Basic while loop that counts from 1 to 10
#---------------------------------

# counter=1
# while [ $counter -le 10 ]; do
#   echo "Number: $counter"
#   counter=$((counter + 1))  # Increment counter otherwise it will be infinte loop 
# done

##If we want to make it one line code 

# counter=1; while [ $counter -le 10 ]; do echo "Number: $counter" ; counter=$((counter + 1)) ; done



#---------------------------------
# Example No 2 : Using if statement with while loop 
#---------------------------------

# i=1
# while [ $i -le 100 ]
# do
#     if [ $(($i % 2)) -eq 0 ]
#     then
#         echo "The number $i is even"
#     fi
#     i=$((i+1))
# done



#---------------------------------
# Example No 3 : Application to calculate the factorial of a number
#---------------------------------


factorial=1
number=$1
initial_no=$number
while [ $number -gt 0 ]; do
  factorial=$(($factorial * $number ))
  number=$(($number-1))
done

echo "The factorial of the $initial_no is $factorial"


#---------------------------------
# Example No 4 : 
#---------------------------------


