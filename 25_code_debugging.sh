#!/bin/bash
#################################
# Created : 10-3-2024
# Code :  Code Debugging;Identifying and resolving errors and issues in scripts to ensure functionality and reliability.

#################################

<<comment

** Code debugging is the process of identifying and fixing errors in your code. 
It's a crucial skill for any programmer, and Bash scripting is no exception.

** Several things can go wrong with your Bash script:

1) Syntax errors: 
These are typos or mistakes in the script's grammar that prevent it from even running.

2) Logical errors: 
The script runs without errors, but it doesn't produce the intended results due to flaws in the logic.

3) Runtime errors: 
These errors occur during script execution due to unexpected input or conditions.



** How you can debug your code ? 

1) Using set options: 

set -x

YOUR CODE SHOULD BE HERE

set +x


2) Using echo statements: 
Add echo statements throughout your script to print the values of variables at different points. 
This helps you track the flow of the script and identify where things might be going wrong.

3) Using the trap command: 

The trap command allows you to define an action to be taken when a specific signal is received. 
You can use it to trigger specific debugging actions when errors occur.

comment


#---------------------------------
# Example No 1 : debugging using set -x, set +x method 
#---------------------------------


set -x 

counter=1
until [ $counter -eq 10 ]; do
  echo "Number: $counter"
  counter=$((counter + 1))  
done

set +x

#---------------------------------
# Example No 2 : 
#---------------------------------