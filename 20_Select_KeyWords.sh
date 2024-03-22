#!/opt/homebrew/Cellar/bash/5.2.26/bin/bash
#################################
# Created : 12-3-2024
# Code : Select; A powerful tool for creating interactive menus that allow users to choose from a list of options

#################################

<<comment0

The main function of select command 

- Presents a numbered list of options to the user.
- Allows the user to select an option by entering its corresponding number.
- Executes user-defined commands based on the selected option.

The syntax of select command 

select var in option1 option2 ... optionN; do
  # Commands to be executed based on the selected option
  # Use $REPLY to access the selected option's index (starting from 1)
done

comment0


##---------------------------------
## Example No 1 : Basic example for select 
##---------------------------------
# select var in "Linux" "Windows" "Mac" 
#     do
#         echo "${var}"
#         break  # We add break then after first choose the prog. will stop 
#     done


##---------------------------------
## Example No 2 : One application for the select for many options 
##---------------------------------


# echo "Which Operating System do you like?" 
# select os in "Windows10" "WindowsXP" "Windows7" "Ubuntu" "Kali" "Parrot" "Мас" 
#     do 
#     case $os in 
#     "Windows10" | "WindowsXP" | "Windows7") 
#         echo "That is really a good choose"
#         break ;; 

#     "Ubuntu" | "Kali" | "Parrot")
#          echo "Why you don't try windows" 
#          break ;; 
    
#     "Mac") 
#         echo "Wow that is great" 
#         break ;; 
#     *) 
#         echo "Invalid entery" 
#         break
#     esac
#     done

        
        


##---------------------------------
## Example No 3 : 
##---------------------------------


