#!/opt/homebrew/Cellar/bash/5.2.26/bin/bash
#################################
# Created : 13-3-2024
# Code : eval; treating a string as a shell command, facilitating dynamic execution and scripting flexibility

#################################

<<comment0

The eval command allows you to treat a string as a shell command and execute it dynamically.

- Eval takes arguments (usually strings) and combines them into a single command. 
It then interprets that command and executes it as if you had typed it directly in the terminal.

- Security Risk when using eval : 
The biggest concern with eval is security. If you use it with untrusted user input (like from a web form), 
it can be exploited to execute malicious code. Malicious users could inject commands that compromise your system.

comment0


##---------------------------------
## Example No 1 : What is the difference between echo and eval 
##---------------------------------

# test_code="date"
# echo "$test_code"   # date
# echo "######################"
# eval "$test_code"  # Wed Mar 13 07:14:09 JST 2024

##---------------------------------
## Example No 2 : 
##---------------------------------
        
# x=10
# y=20
# summation="`expr $x + $y`"
# to_print="echo"  
# eval  $to_print $summation      # 30


##---------------------------------
## Example No 3 : 
##---------------------------------




##---------------------------------
## Example No 4 : 
##---------------------------------



