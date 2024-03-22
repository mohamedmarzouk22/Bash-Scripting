#!/opt/homebrew/Cellar/bash/5.2.26/bin/bash
#################################
# Created : 12-3-2024
# Code :  Local Vs Export

#################################

<<comment0
We talked about the local and global varialbes before in function, but let's give more details 

1) export:
- Used to define an environment variable.
- Environment variables are accessible throughout the entire script, including 
  any functions defined within the script and even in child processes spawned by the script.
- Changes made to an environment variable inside a function will 
   persist after the function finishes execution.
- Even if you define one variable with export in bash you can access in the zsh in the same shell

2) local:
- Used to declare a variable local to a specific function.
- Variables declared with local are only accessible within 
  the function body where they are defined.
- Changes made to a local variable inside a function won't
   affect any variable with the same name outside the function.


3) source : 

The source command is used to execute the contents of another script file within 
the current script. It's essentially a way to include code from another file as 
if it were written directly in the current script.

Benefits of using source:

- Modularization: You can break down your code into smaller, reusable scripts 
and include them using source for better organization.

- Function Definitions: You can define functions in separate files and source 
them to make your main script cleaner and more focused.

- Variable Sharing: Variables defined in the sourced script become 
accessible in the current script, promoting code reuse.

comment0


##---------------------------------
## Example No 1 : simple example
##---------------------------------

# function my_name(){
#   name="Name inside the function"
#   echo $name

# }

# name="Name outside the function"
# echo $name
# my_name

## Output 
## Name outside the function
## Name inside the function

## Note --> no any change as the function called after printing the outside name

##---------------------------------
## Example No 2 : a function accessing variables defined outside its scope
##---------------------------------

# function my_name(){
  
#   echo $name

# }

# name="Name outside the function"
# echo $name
# my_name


## Output 
##Name outside the function
##Name outside the function

##---------------------------------
## Example No 3 : global variable from function 
##---------------------------------

# function my_name(){
#   name="Name inside the function"
#   echo $name

# }

# name="Name outside the function"
# my_name
# echo $name


## Output 
## Name inside the function
## Name inside the function




##---------------------------------
## Example No 4 : Make the variable local only inside the function
##---------------------------------

# function my_name(){
#   local name="Name inside the function"
#   echo $name

# }

# name="Name outside the function"
# my_name
# echo $name

## Output 
## Name inside the function
## Name outside the function


##---------------------------------
## Example No 5 : Even if no any variable outside you can not access the local of function
##---------------------------------

# function my_name(){
#   local name="Name inside the function"
#   echo $name

# }

# my_name
# echo $name

## Output 
## Name inside the function
## ...


## 2) Export : make the variable global in the whole shell 
##@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

##---------------------------------
## Example No 6 : Basic example for export 
##---------------------------------

# function my_name(){

#   echo $name

# }

# export name="Name outside the function"
# my_name
# echo $name


## Output 
##Name outside the function
##Name outside the function



## 3) Source : 
##@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

##---------------------------------
## Example No 7 : another way to make the varialbe global in the shell 
##---------------------------------

# You just need to run the file by source code not bash in the terminal 

function my_name(){

  echo $name

}

name="Name outside the function"
my_name
echo $name
 
# Working perfect when use  source 18_Local_vs_Export.sh


##---------------------------------
## Example No 8 : 
##---------------------------------