#!/opt/homebrew/Cellar/bash/5.2.26/bin/bash
#################################
# Created : 8-3-2024
# Code :  If statements;  provide conditional execution and branching, enabling logic and decision-making based on specified conditions

#################################

<<comment1
The syntax for an if statement

if [ condition ]; then
  # code to be executed if the condition is true
fi

Or 

if [ condition ]
 then
  # code to be executed if the condition is true
fi

- To write the condition in if statement you have to know these equivalence : 
       =     -eq
       >     -gt 
       <     -lt 
       !=    -ne   # not equal 
       >=    -ge
       <=    -le

comment1


#---------------------------------
# Example No 1 : Very basic if statement example
#---------------------------------

# age=21
# if [ $age -eq 21 ] 
#     then 
#     echo "Okay the age is right "
# fi


#---------------------------------
# Example No 2 : check if the file exist
#---------------------------------

# if [ -f "new_file.sh" ]; then
#   echo "The file 'new_file.sh' exists."
# fi


#---------------------------------
# Example No 3 : Use -eq, -gt, -lt
#---------------------------------

# age=$1

# read -p "Please enter your age : " age

# if [ $age -eq 21 ]
#   then
#   echo "Age equal to 21"
# fi

# if [ $age -gt 21 ]
#   then
#   echo "Age greater than 21"
# fi


# if [ $age -lt 21 ]
#   then
#   echo "Age less than 21"
# fi


#---------------------------------
# Example No 4 : Let's write if statement in one line 
#---------------------------------

# age=21

# if [ $age -eq 21 ] ; then echo "Age equal to 21" ; fi


#---------------------------------
# Example No 5 : Use -ne, -ge, -le
#---------------------------------

# age=26

# if [ $age -eq 21 ]  
#    then
#   echo "Age Equals 21 "
# else
#   echo "Age Not Equals 21 "
# fi

#---------------------------------
# Example No 6 : Let's see how to use elif to make things more easy
#---------------------------------

<<comment2
Sometimes we have 3 options not just two then the if else only not enough, so we need to use elif in this case 
We will see this example where only negative and zero are options while we can also have positive 
comment2

# Without elif 
#@@@@@@@@@@@@@

# number=$1

# if [ $number -eq 0 ]  
#     then
#   echo "Value of number is zero"
# else
#   echo "Number Negative or Positive"
# fi

# if we entered +ve value we will get message of negative, then we have to use elif



# With elif
#@@@@@@@@@@

# number=$1

# if [ $number -gt 0 ]
#     then
#     echo "Number is Positive"
# elif [ $number -lt 0 ]
#     then
#     echo "Number is Negative"
# else
#     echo "Number is Zero"
# fi


#---------------------------------
# Example No 7 : Using and &&   or ||  not ! 
#---------------------------------

# read -p "Please Enter Your Age : " age  #25
# read -p "Please Enter Your GPA : " gpa   #70

# if [[ $age -ge 20 ]] && [[ $gpa -ge 80 ]]
#     then
#     echo "Welcome"
# else
#     echo "Sorry, you are not eligible."
# fi

## output : Sorry 


#---------------------------------
# Example No 8 : Using and &&   or ||  not ! 
#---------------------------------

# read -p "Please Enter Your Age : " age  #25
# read -p "Please Enter Your GPA : " gpa  # 70

# if [[ $age -ge 20 ]] || [[ $gpa -ge 80 ]]
#     then
#     echo "Welcome"
# else
#     echo "Sorry, you are not eligible."
# fi

## output : Welcome

#---------------------------------
# Example No 9 : 
#---------------------------------

# read -p "Please Enter Your Age : " age  #18
# read -p "Please Enter Your GPA : " gpa  # 70

# if [[ $age -ge 20 ]] || ! [[ $gpa -ge 80 ]]
#     then
#     echo "Welcome"
# else
#     echo "Sorry, you are not eligible."
# fi

## output : Welcome


<<comment3
There are many options that we can use in the condition statement
such as : 

Bash offers a rich set of options for testing file and directory attributes 
within conditional statements using test operators 
(also sometimes referred to as conditional expressions) such as : 

1) File Existence and Type:

-e file: Checks if a file exists (regular file, directory, symbolic link, etc.).
-f file: Checks if a file is a regular file.
-d file: Checks if a file is a directory.

2) Read, Write, and Execute Permissions:

-r file: Checks if the script has read permission for the file.
-w file: Checks if the script has write permission for the file.
-x file: Checks if the script has execute permission for the file.

3) File Size and Emptiness:

-s file: Checks if a file has a non-zero size (not empty).
-z file: Checks if a file is empty (zero size).

4) Symbolic Links:

-L file: Checks if a file is a symbolic link.

5) Special Files:

-b file: Checks if a file is a block special file (e.g., devices).
-c file: Checks if a file is a character special file (e.g., terminals).


comment3


#---------------------------------
# Example No 10 :  -d working for dir only 
#---------------------------------

# path="many_files/directory"

# if [ -d "$path" ] 
#     then
#     echo "The path already Exist! "
# else
#     echo "The path doses not Exist! "
# fi

#---------------------------------
# Example No 11 : -e for files or directory 
#---------------------------------

# path="many_files/directory"
# path="many_files/file3"

# if [ -e "$path" ] 
#     then
#     echo "The path already Exist! "
# else
#     echo "The path doses not Exist! "
# fi


#---------------------------------
# Example No 12 : -s; if the file empty so not exist 
#---------------------------------

# path="many_files/file3"

# if [ -s "$path" ] 
#     then
#     echo "The path already Exist! "
# else
#     echo "The path doses not Exist! "
# fi

## Output : The path doses not Exist! ; As the file is empty 


#---------------------------------
# Example No 13 : Check the permission -r -w -x
#---------------------------------

# path="many_files/file3"

# if [ -x "$path" ] 
#     then
#     echo "The file has the execute permission "
# else
#     echo "No execute permission for this file "
# fi



#---------------------------------
# Example No 14 : Application to check the execute permission for the file, if not, will give it 
#---------------------------------

# read -p "Please enter file name : "  filename
# if [ -x $filename ]
#      then 
#       echo "Your file already execute "
# elif [ -e $filename ]
#      then 
#       chmod +x $filename
#       echo "Your file become execute "
# else [ -x $filename ]
#       echo "Your file not exist"
# fi

#---------------------------------
# Example No 15 : easy apllication by taking an argument 
#---------------------------------


filename=$1
if [ -x $filename ]
     then 
      echo "Your file already execute "
elif [ -e $filename ]
     then 
      chmod +x $filename
      echo "Your file become execute "
else [ -x $filename ]
      echo "Your file not exist"
fi


#---------------------------------
# Example No 16 : 
#---------------------------------