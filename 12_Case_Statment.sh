#!/opt/homebrew/Cellar/bash/5.2.26/bin/bash
#################################
# Created : 10-3-2024
# Code : Case Statment; efficient branching and decision-making capabilities

#################################

<<comment0

The syntax of a case statement:

case EXPRESSION in
  PATTERN1)    COMMANDS1 ;;
  PATTERN2)    COMMANDS2 ;;
  ...
  *)           DEFAULT_COMMANDS ;;
esac

The case statement evaluates the expression against each pattern sequentially until a match is found.
Once a match is found, the corresponding commands are executed, and the case statement exits. Subsequent patterns are not evaluated.
The default clause (*) is useful for handling unexpected values or errors.

comment0



#---------------------------------
# Example No 1 : Let's try 4 possibillities by if and elif 
#---------------------------------


# read -p "Please enter any digit from 1 to 4: " digit

# if [ $digit -eq 1 ]
#   then
#     echo "You entered 1"
# elif [ $digit -eq 2 ]
#   then
#     echo "You entered 2"
# elif [ $digit -eq 3 ]
#   then
#     echo "You entered 3"
# else
#   echo "You entered 4"
# fi

## It's very hard to control many conditons with elif so let's see the case statement

#---------------------------------
# Example No 2 : Let's do the same by Case statement 
#---------------------------------


# read -p "Please enter any digit from 1 to 4: " digit

# case $digit in 
#   1) echo "Mohamed Marzouk" ;;
#   2) echo "Yusuf Marzouk" ;;
#   3) echo "Karma Marzouk"  ;;
#   4) echo "Omar Marzouk" ;;
#   *) echo "Not Marzouk family" 
# esac



#---------------------------------
# Example No 3 : How to use case to check the day of the week
#---------------------------------


# dayOfWeek=$(date +%u)

# case $dayOfWeek in
#   1) echo "Today is Monday." ;;
#   2) echo "Today is Tuesday." ;;
#   3) echo "Today is Wednesday." ;;
#   *) echo "Today is not Monday, Tuesday, or Wednesday." ;;
# esac


#---------------------------------
# Example No 4 : Application; Which OS you are currently using 
#---------------------------------

## You can use you own index for the case statment not only numbers

# read -p "Please enter your current operating system : " operating
# case $operating in 
# windows) echo "This could be consider as the best choose" ;;
# linux) echo "which distribution: Kali or Parrot " ;;
# mac) echo "Wow! you are an apple fan" ;;
# *) echo "we don't know more information about this OS"
# esac 



#---------------------------------
# Example No 5 : Application; uncompress any file with any extension 
#---------------------------------

## Firstly we check if the file specified as the first argument ($1) exists 
## If the file exists, a case statement is used to check the filename extension of the archive file


# archive="$1"

# if [ -f "$archive" ]  
#     then
#     case $1 in
#       *.rar) unrar x "$archive" ;;
#       *.tar) tar xvf "$archive" ;;
#       *.tar.bz2) tar xvjf "$archive" ;;
#       *.tar.gz) tar xvzf "$archive" ;;
#       *.zip) unzip -q "$archive" ;;
#       *) echo "I don't know how to extract this file !" ;;
#     esac
# else
#   echo "The file '$archive' does not exist."
# fi



#---------------------------------
# Example No 6 :  Application of case statment to show the types of OS on the machine 
#---------------------------------

unameOut=$(uname -a)
case "${unameOut}" in
  *Microsoft*)
    OS="WSL"  # Likely Windows Subsystem for Linux
    ;;
  *microsoft*)
    OS="WSL2"  # Likely Windows Subsystem for Linux version 2
    ;;
  *Linux*)
    OS="Linux"
    ;;
  *Darwin*)
    OS="Mac"
    ;;
  *CYGWIN*)
    OS="Cygwin"
    ;;
  *MINGW*)
    OS="Windows"  # Likely MinGW environment on Windows
    ;;
  *Msys*)
    OS="Windows"  # Likely MSYS environment on Windows
    ;;
  *)
    OS="UNKNOWN:${unameOut}"
esac

echo "This machine using $OS as an operating system"




