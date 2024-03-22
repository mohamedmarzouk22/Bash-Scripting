#!/opt/homebrew/Cellar/bash/5.2.26/bin/bash
#This path for the newer version of bash as old version is the default on mac M2
#################################
# Created : 10-3-2024
# Code :  Arrays; facilitate the storage and manipulation of multiple values under a single variable, enhancing data organization and processing capabilities."

#################################

<<comment0

Array --> A linear data structure that stores data in multiple adjacent places 
      -->  a collection of elements that can be accessed using an index. 
      --> They provide a way to store and manage multiple related values under a single variable name.

Bash supports two main types of arrays:

A) Indexed Arrays: 
These are the most common type. Elements are accessed using a numerical index starting from 0.

B) Associative Arrays (Also called Hashes): 
These are less common in Bash scripting compared to other programming languages. 
Elements are accessed using associative keys (strings or words) instead of numerical indexes.


Our codes will be under these categories 

1) How to declaring arrays 
  I) - Using declare: declare -a array_name
  II) - Using assignment: array_name=()

2) Add or delete new elements for array 
  I) Add elements by +=  --> # only add from the end of array 
  II) add elements by put arrays together  --> you can control that to be added at the begining 

3) Read array from user 

comment0






## 1)How to declaring arrays 
##@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

<<comment1
Important things to note when you deal with array 
@ --> means all elements 
# --> find the length 
${array[@]}  --> All the elements of the array 
${!array[@]}  --> The index of the elements not the elements themself
${#array[@]}  --> Length of the array 
$@  --> all the arguments entered by the user  
comment1


#---------------------------------
# Example No 1 : declare array, access elements, and last element 
#---------------------------------

# declare -a array1=("Osama" "Hamza" "Jameel" "Zeyad" "Sami")

# array2=("Mohamed" "Marzouk" "Ali")

# echo "The first element in array 1 is :  ${array1[0]}" 
# echo "The last element in array 2 is :  ${array2[2]}" 


# # To access last element use ${array2[-1]}  or ${array2[@]: -1}
# echo "The last element in array 2 is :  ${array2[-1]}" 
# echo "The last element in array 2 by another method is :  ${array2[@]: -1}" 

#---------------------------------
# Example No 2 : Access all elements of the array by arr[@]
#---------------------------------

# declare -a array=("Osama" "Hamza" "Jameel" "Zeyad" "Sami")
# echo "The elements of the array are :  ${array[@]}" 



#---------------------------------
# Example No 3 : How to get the legth of the array ? the total number of elements in array 
#---------------------------------

# declare -a array=("Medo" "Mohamed" "Karma" "Yusuf" "Omar")
# echo "The number of elements of the array is :  ${#array[@]}" 

#---------------------------------
# Example No 4 : Length of the element itself 
#---------------------------------

<<comment2

 ${#array[@]}"  --> this give you the lenglth of the the array 
 ${#array[0]}"  --> this give you the length of certain element 

comment2


# declare -a array=("Medo" "Mohamed" "Karma" "Yusuf" "Omar")
# echo "The number of the first element of the array; ${array[0]} is :  ${#array[0]}" 



## 2) Add or delete new elements for array 
##@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

#---------------------------------
# Example No 5 : You can define the array then add the elements 
#---------------------------------

# declare -a array1
# array1[0]="Mohamed"
# array1[1]="Marzouk"
# array1[2]="Sobaih"
# echo "The length of the array is : ${#array1[@]}"  

#---------------------------------
# Example No 6 : You can determine the index as you wwish
#---------------------------------

# declare -a array2
# array2[4]="Mohamed"
# array2[5]="Marzouk"
# array2[6]="Sobaih"
# echo "The length of the array is : ${#array2[@]}"  
# echo "The element of index 1 is  : ${array2[0]}"  # nothing because you don't have and inex called 0


#---------------------------------
# Example No 7 : Add elements for and array by += 
#---------------------------------


# declare -a array3=("Japan" "Egypt")
# array3+=("Mohamed")
# array3+=("Marzouk")
# echo "The elements of the array are :  ${array3[@]}" 

#---------------------------------
# Example No 8 : Using Descriptive Keys of the array elements (Using -A)
#---------------------------------
<<comment3
Instead of relying on numerical indexes, you can define meaningful 
string keys that describe the data you're storing. 
This makes your array more self-documenting and easier to manage.

comment3

# declare -A website_data

# website_data["name"]="Google"
# website_data["url"]="https://www.google.com"
# website_data["founded"]="1998"

# echo "Website Name: ${website_data['name']}"



#---------------------------------
# Example No 9 : Another example for descriptive keys 
#---------------------------------

# declare -A array=([first]="Mohamed" [second]="Marzouk")
# echo "The array elements are : ${array[@]}"
# echo "The first element of the array is : ${array[first]}"
# echo "The first element of the array is by index : ${array[0]}" # give nothing 


#---------------------------------
# Example No 10 : Print all elemnts of array by two different methods, also the print the keys 
#---------------------------------

# declare -a array1=("Osama" "Hamza" "Jameel" "Zeyad" "Sami")

# echo "The elements of the array are : ${array1[@]}"  # Osama Hamza Jameel Zeyad Sami
# echo "============================================="
# echo "The elements of the array are : ${array1[*]}"  # Osama Hamza Jameel Zeyad Sami
# echo "============================================="
# echo "The keys of the array are : ${!array1[@]}"  # 0 1 2 3 4


<<comment4
Seems both are the same, but the difference is how they handle spaces within elements 
1)  ${array1[@]}
This expands the array elements and separates them using the first character of the current \$IFS variable. 
By default, IFS is a space, tab, and newline character.

Advantage: Preserves the order of elements, including any leading or trailing spaces within them.

Disadvantage: If an element itself contains spaces, those spaces might be misinterpreted due 
to the way IFS works.

2)  ${array1[*]}
This expands the array elements and joins them together into a single string, separated by nothing.

Advantage: Avoids misinterpreting spaces within elements.

Disadvantage: Loses information about leading or trailing spaces in elements,
 and elements are simply concatenated without any separation.

3) ${!array1[@]} 
This expand the array keys
comment4


##---------------------------------
## Example No 11 : To understand the difference between  ${array1[@]} and ${!array1[@]} 
##---------------------------------

# declare -A array1=([first]="Orange" [second]="Apple" [third]="Mango")
# echo "The elements of the array are : ${array1[@]}" 
# echo "The keys of the array are : ${!array1[@]}"



##---------------------------------
## Example No 12 : To understand the difference between @ and * to access all elements of array 
##---------------------------------

# array1=("Mohamed Marzouk" "Ahmed Ali" "Mohamed Ahmed")

# # loop1

# for i in ${array1[@]}
#     do
#         echo "The element is : $i"
#     done

# echo "**************************"

# # loop2

# for i in ${array1[*]}
#     do
#         echo "The element is : $i"
#     done

<<comment5
You may notice that we cannot retrieve elements containing spaces from both arrays. 
This issue can be resolved by enclosing all elements within double quotes, but this method only works with
comment5



##---------------------------------
## Example No 13 : Access elements with space in between
##---------------------------------

# array1=("Mohamed Marzouk" "Ahmed Ali" "Mohamed Ahmed")

# # loop1

# for i in "${array1[@]}"
#     do
#         echo "The element is : $i"
#     done

# echo "**************************"

# # loop2

# for i in "${array1[*]}"
#     do
#         echo "The element is : $i"
#     done


## The output 
# The first element in array 1 is :  Osama
# The last element in array 2 is :  Ali
# The last element in array 2 is :  Ali
# The last element in array 2 by another method is :  Ali
# The element is : Mohamed Marzouk
# The element is : Ahmed Ali
# The element is : Mohamed Ahmed
# **************************
# The element is : Mohamed Marzouk Ahmed Ali Mohamed Ahmed


##---------------------------------
## Example No 14 : Starting access the array from certain element 
##---------------------------------

# declare -a array1=("Osama" "Hamza" "Jameel" "Zeyad" "Sami")
# echo "The elements of the array are from 2nd element : ${array1[@]:1}" # Hamza Jameel Zeyad Sami



##---------------------------------
## Example No 15 : Slice certain section of elements from the array 
##---------------------------------

<<comment5
You can slice a specific section of elements from an array using parameter 
expansion with a colon (:) syntax
array_name[@]:starting index :length
comment5


# declare -a array1=("Mohamed" "Ahmed" "Osama" "Hamza" "Jameel" "Zeyad" "Sami")
# echo "The elements of the array are from 2nd to 4th element : ${array1[@]:1:3}" # Ahmed Osama Hamza

##---------------------------------
## Example No 16 : Add elements to array at the beginig of array not the end 
##---------------------------------

# array1=("Three" "Four" "Five")
# array2=("One" "Two" ${array1[@]})

# echo "The elelments of array 1 are : ${array1[@]}" # Three Four Five
# echo "The elelments of array 2 are : ${array2[@]}" # One Two Three Four Five

# echo "The 2nd , 3rd elemnts of array 2 are : ${array2[@]:1:2}" # Two Three

##---------------------------------
## Example No 17 : Insert element in the middle of the array 
##---------------------------------

# array1=(One Two Three Four) 
# i=2

# # we need the array two be   (One Two new Three Four) 

# array2=("${array1[@]:0:$i}" "new" "${array1[@]:$i}")
# echo "The elelments of array 2 are : ${array2[@]}"



##---------------------------------
## Example No 18 : Delete Array element 
##---------------------------------


# array=(One Two Three)

# echo "The elelments of array are : ${array[@]}"  # One Two Three
# echo "The Keys of the array are : ${!array[@]}"  # 0 1 2
# echo "============================================="
# # Delete the second element from the array 
# unset -v "array[1]"

# echo "The elelments of array are : ${array[@]}"  # One Three
# echo "The Keys of the array are : ${!array[@]}"  # 0 2

## The index not automatically  shifted in memory 

<<comment6
* unset simply removes the element at the specified index, leaving a gap in the original order.
* The keys (indices) remain unchanged, leading to a mismatch between the element positions 
and their corresponding keys.

How to Delete and Shift Elements:

1) Using a Loop and Temporary Array:
2) Using Array Slicing

comment6



##---------------------------------
## Example No 19 :  for Using a Loop and Temporary Array to shift elements after delete
##---------------------------------

# array=(One Two Three)

# # Loop to iterate over elements and copy them to a new array
# new_array=()
# for i in "${!array[@]}"; do
#   if [[ $i -eq 1 ]]; then  # Check if index is 1 (second element)
#     continue  # Skip this element (index 1)
#   fi
#   new_array+=("${array[$i]}")  # Add element to new array
# done

# # Assign the new array back to the original array
# array=("${new_array[@]}")

# echo "The elements of the array are : ${array[@]}"  # One Three
# echo "The Keys of the array are : ${!array[@]}"  # 0 1 (keys are reset)



##---------------------------------
## Example No 20 : for Using Array Slicing
##---------------------------------

# array=(One Two Three)
# deleted_element=${array[1]}  # Optional: Store the deleted element
# array=("${array[@]:0:1}" "${array[@]:2}")

# echo "The elements of the array are : ${array[@]}"  # One Three
# echo "The Keys of the array are : ${!array[@]}"  # 0 1 (keys are reset)


##---------------------------------
## Example No 21 : access elements of array by for loop 
##---------------------------------

# declare -a array=("Osama" "Hamza" "Jameel" "Zeyad" "Sami")
# for i in ${array[@]}
#     do 
#     echo "This the key number : $i "

#     done

## The output 
# This the key number : Osama
# This the key number : Hamza
# This the key number : Jameel
# This the key number : Zeyad
# This the key number : Sami



##---------------------------------
## Example No 22 : access Keys of array by for loop C-style
##---------------------------------

# declare -a array=("Osama" "Hamza" "Jameel" "Zeyad" "Sami")
# for ((i=0; i<${#array[@]};i++))
#     do 
#     echo "This the key number : $i "

#     done

## The output 
# This the key number : 0
# This the key number : 1
# This the key number : 2
# This the key number : 3
# This the key number : 4



##---------------------------------
## Example No 23 : access elements of array by for loop C-style
##---------------------------------

# declare -a array=("Osama" "Hamza" "Jameel" "Zeyad" "Sami")
# for ((i=0; i<${#array[@]};i++))
#     do 
#     echo "Element : ${array[$i]} "

#     done


## The output 
# Element : Osama
# Element : Hamza
# Element : Jameel
# Element : Zeyad
# Element : Sami

##---------------------------------
## Example No 24 : Do the same via while loop 
##---------------------------------

# declare -a array=("Osama" "Hamza" "Jameel" "Zeyad" "Sami")
# i=0
# while    [ $i -lt ${#array[@]} ] 
#     do 
#     echo "Element : ${array[$i]} "
#     i=$((i+1))

#     done


## The output 
# Element : Osama
# Element : Hamza
# Element : Jameel
# Element : Zeyad
# Element : Sami

##---------------------------------
## Example No 25 : DO the same via until 
##---------------------------------

# declare -a array=("Osama" "Hamza" "Jameel" "Zeyad" "Sami")
# i=0
# until   [ $i -ge ${#array[@]} ] 
#     do 
#     echo "Element : ${array[$i]} "
#     ((i++))

#     done



## 3) Read array from user 
##@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

##---------------------------------
## Example No 26 : Read array from user 
##---------------------------------

# echo "Please Enter Data in Array :"
# read -a array

# for key in ${!array[@]}
#     do 
#         echo "This is key number : ${key}"
#         echo "The elements of the array are : ${array[@]}"
#     done 

## the output

#The elements of the array are : Medo Ali Ahmed

## Notice that : they read all elements as array of only one element 


##---------------------------------
## Example No 27 : Using while to take array from user 
##---------------------------------

# while read line
#     do
#        array=("${array[@]}" $line)
#     done
#     echo "${array[@]}"

## Note no stop for this code until you press ctr+D then you got the output all in one array 

##---------------------------------
## Example No 28 : You can cotrol the seprator between the lines 
##---------------------------------

# IFS=','
# while read line
#     do
#        array=("${array[@]}" $line) # Mohamed, Ahmed,Ali
#     done
#     echo "${array[2]}" # Ali


##---------------------------------
## Example No 29 : Take all arguments from user to an array 
##---------------------------------

array=($@)
echo "The elements of the array are ${array[@]}"  # 1 2 3 4 5

##---------------------------------
## Example No 30 : 
##---------------------------------