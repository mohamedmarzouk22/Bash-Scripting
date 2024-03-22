#!/opt/homebrew/Cellar/bash/5.2.26/bin/bash
#################################
# Created : 2-3-2024
# Code : Read command; How to read input from the user and control that 

#################################

<<comment0
The read command in bash scripting is used to read input from 
the user or from a file descriptor.
comment0


#---------------------------------
# Example No 1 : Basic example for read command 
#---------------------------------

# echo "Please enter your name : "
# read name 
# echo "Welcome, $name"


#---------------------------------
# Example No 2 : add prompot for read command with option -p 
#---------------------------------

# read -p "Please enter your name : " name 
# echo "Welcome, $name"


#---------------------------------
# Example No 3: enter the input in shadow mode -s flag
#---------------------------------



# read -p "Please enter your username : " name 
# read -sp "Please enter your password : " pass
# echo ""
# echo "Welcome, $name"
# echo "password, $pass"

<<shadow_flag
In this scenario, when the user applies the "-s" flag, 
they are unable to see what they are typing on the display. 
This mirrors the experience of entering a password, where 
characters are concealed for security purposes.
shadow_flag


#---------------------------------
# Example No 4 : define certain time to take the input
#---------------------------------

<<time_option
At times, you may wish to allow the user a specific amount of 
time to input data; otherwise, no entries will be accepted. 
To achieve this, utilize the "-t" flag.
time_option


# read -t 5 -p "Please enter your username : " name 
# read -sp "Please enter your password : " pass
# echo ""
# echo "Welcome, $name"
# echo "password, $pass"


#---------------------------------
# Example No 5 : specify certain char to stop take input 
#---------------------------------

<<com
Once a specific character is entered, the code will 
cease receiving input and promptly display the result. 
This functionality can be achieved using the "-d" flag
com

# read -d 'a' value
# echo ""
# echo "$value"

#---------------------------------
# Example No 6 : specify certain number of input char
#---------------------------------

<<input_char
You can utilize the "-N" flag to specify a particular number of inputs. 
If this number changes, the program will cease to function correctly.
input_char

# read -N 4 value
# echo ""
# echo "$value"

# TAKE CARE : got error on mac and said no option called -N 

#---------------------------------
# Example No 7 : equal or lower number of inputs 
#---------------------------------

<<input_char
You can employ the "-n" flag to specify a certain number of inputs. 
In this scenario, the program can accept either this specified number 
of characters or a lower number.
input_char


read -n 4 value
echo ""
echo "$value"