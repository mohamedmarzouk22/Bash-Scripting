#!/opt/homebrew/Cellar/bash/5.2.26/bin/bash
#################################
# Created : 10-3-2024
# Code : Until loop; execute commands or actions repeatedly until a specified condition becomes true

#################################

<<comment0
The syntax of a Until loop:

until [ condition ]; do
  commands<statement to be repeated>
done

** The idea of until loop  --> The opposite of while loop concept; repeate the code while condtion false then will stop once it become true
The loop continues to execute the commands within the do block as long as the condition evaluates to false.
Once the condition becomes true, the loop terminates, and the script continues execution with the code following the done statement.
The until loop is useful when you want to wait for a specific condition to be met before proceeding. 
For example, waiting for a file to be downloaded or a network connection to be established.
comment0




#---------------------------------
# Example No 1 : Basic example for until loop as counter
#---------------------------------

# counter=1
# until [ $counter -eq 10 ]; do
#   echo "Number: $counter"
#   counter=$((counter + 1))  
# done


##Remmember the while code that give the same result to realize the concept
# counter=1
# while [ $counter -le 10 ]; do
#   echo "Number: $counter"
#   counter=$((counter + 1))  # Increment counter otherwise it will be infinte loop 
# done




#---------------------------------
# Example No 2 : Using until loop to wait for a file to exist
#---------------------------------

# filename="myfile.txt"

# until [ -f "$filename" ]; do
#   echo "Waiting for file: $filename ..."
#   sleep 2  # Wait for 2 seconds before checking again
# done

# echo "File '$filename' found!"




