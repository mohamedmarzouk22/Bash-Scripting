#!/opt/homebrew/Cellar/bash/5.2.26/bin/bash
#################################
# Created : 12-3-2024
# Code : Internal variables; hold system and script-specific information, aiding in script execution and management

#################################

<<comment0
Internal variables, also known as preset variables or special variables, 
are built-in variables in bash that hold information about the current environment or the script's execution. 

They provide access to useful data without needing to define them explicitly within your script.

Examples : 

- "$@" expands to all positional arguments passed to your script.
Each argument is treated as a separate word, preserving spaces and special characters within the arguments.

- "$*"  expands to a single string, with all arguments concatenated together. However, word splitting occurs based on the current value of the IFS  variable.
Use "$*" with caution, only if you intend to concatenate all arguments into a single string. 

- $$: This variable expands to the process ID (PID) of the current script itself. 
It's useful when you need to identify the current script's process within the system.

- BASH_PID: This variable contains the PID of the bash process itself (might differ from $$ in some cases).


- $?: This variable holds the exit status of the last command executed. 
A value of 0 indicates successful execution, while any other value signifies an error. 

- PID Capture: $! captures the PID of that most recently backgrounded process within the current script.

comment0


##---------------------------------
## Example No 1 : example for $$
##---------------------------------

# echo "The PID of the process is : $$ "  #The PID of the process is : 83659


##---------------------------------
## Example No 2 : backgorund id $!
##---------------------------------
# echo "The backgorund process PID is : $! "




##---------------------------------
## Example No 3 : To count the number of the arguments from user 
##---------------------------------

# echo "The number of variables is $#"


## The output 
# bash 19_Internal_Variables.sh 3 4 56 6
# The number of variables is 4





##---------------------------------
## Example No 4 : The function name 
##---------------------------------

print_name(){
    echo "My name is : Mohamed"
    echo "The name of the function is : $FUNCNAME"
}

print_name

## The output 
# My name is : Mohamed
# The name of the function is : print_name

##---------------------------------
## Example No 5 : 
##---------------------------------


##---------------------------------
## Example No 6 : 
##---------------------------------



##---------------------------------
## Example No 7 : 
##---------------------------------


##---------------------------------
## Example No 8 : 
##---------------------------------