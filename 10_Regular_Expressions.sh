#!/opt/homebrew/Cellar/bash/5.2.26/bin/bash
#################################
# Created : 15-3-2024
# Code : Regular expressions ; How to write certain expression that allow you to extract certain lines of your log file or pdb files or .. etc 

#################################

<<comment0
- Regular expressions are extremely useful in extracting information from text such as code, log files, spreadsheets, or even documents. 

- Everything is essentially a character, and we are writing patterns to match a specific sequence of characters (also known as a string). 
Most patterns use normal ASCII, which includes letters, digits, punctuation and other symbols on your keyboard like %#$@!,
but unicode characters can also be used to match any type of international text.

Some examples : 

The expression  or metacharacter     -    Description 

\d	                                -   Matches any single digit character (0-9). --> mean skip the first single digit coming 
\d{6}                               - Skip 6 consecutive digits or find any 6 consecutive digits 
\w	                                -   Matches any single word character (alphanumeric and underscore: a-z, A-Z, 0-9, and _)  --> mean skip the first word coming
\w{6}                               -   Skip 6 consecutive words or find any 6 consecutive words
\s	                                -   Matches any single whitespace character (space, tab, newline, carriage return, etc.).  
                                     Imortant Note about whitespace : The most common forms of whitespace you will use with regular expressions are the 
                                     space ( ), the tab (\t), the new line (\n) and these special characters match each of their respective whitespace

[]	                                -   Character set. Matches any single character within the brackets. 
                                        For example, [abc] matches any of the characters 'a', 'b', or 'c'.
                                        [a-z] matches any of the characters from a to z and small letters 
                                        [A-Z]  for capital letters
                                        [0-9] matches the numbers from 0 to 9

[A-Z]{2,16}                        --> 	Matches a sequence of 2 to 16 uppercase letters (A-Z).

^	                                -   Matches the beginning of the string.
$	                                -   Matches the end of the string. 
*	                                -   Matches the preceding character zero or more times.
+	                                -   Matches the preceding character one or more times.
?	                                -   Matches the preceding character zero or one time (optional).
                                    example for optional:  the pattern ab?c will match either the strings "abc" or "ac" because the b is considered optional

\d*	                               - Matches zero or more digits (0-9). This is greedy, so it will match as many digits as possible.
\d+	                               - Matches one or more digits (0-9). This is also greedy and will match as many digits as possible.
\d?	                               - Matches zero or one digit (0-9). This is non-greedy and will match only one digit if present.

Some examples for patterns   
a+        --> (one or more a's)  
[abc]+    --> (one or more of any a, b, or c character) 
and .*    --> (zero or more of any character)

.  (dot)                            -  can match any single character (letter, digit, whitespace, everything).

\{n\}	                            - Matches the preceding character exactly n times.
\{n,m\}	                            - Matches the preceding character at least n times but no more than m times.

abc                                --> Matches the literal string "abc".
\d{3}-\d{3}-\d{4}                  --> Matches a phone number format like XXX-XXX-XXXX (3 digits, hyphen, 3 digits, hyphen, 4 digits).
\w+\.\w+                           -->   Matches an email address format like username.domain (one or more word characters, dot, one or more word characters).
^http://                           --> Matches the beginning of a URL with the protocol "http://".
$txt$                              --> Matches lines that end with the string ".txt".
\d..\d                             --> Matches four consecutive digits, first and last are numbers, where the middle digit can be any thing (e.g., 1tt3, 4st6, 78s9).


Summary all possible expressions from  https://regexone.com You can follow and solve there at ecery lesson 

abc…	Letters
123…	Digits
\d	Any Digit
\D	Any Non-digit character
.	Any Character
\.	Period
[abc]	Only a, b, or c
[^abc]	Not a, b, nor c   -->   Take care  ^[abc] match starting with a or b or c 
[a-z]	Characters a to z
[0-9]	Numbers 0 to 9
\w	Any Alphanumeric character
\W	Any Non-alphanumeric character
{m}	m Repetitions
{m,n}	m to n Repetitions
*	Zero or more repetitions
+	One or more repetitions
?	Optional character
\s	Any Whitespace
\S	Any Non-whitespace character
^…$	Starts and ends
(…)	Capture Group
            - Any subpattern inside a pair of parentheses will be captured as a group. In practice, this can be used to extract information like phone numbers or emails from all sorts of data.
            - Imagine for example that you had a command line tool to list all the image files you have in the cloud. You could then use a pattern such as ^(IMG\d+\.png)$ to capture and extract the full filename, but if you only wanted to capture the filename without the extension, you could use the pattern ^(IMG\d+)\.png$ which only captures the part before the period.

(a(bc))	   Capture Sub-group
(.*)	    Capture all
(abc|def)	 Matches abc or def --> you can use the | (logical OR, aka. the pipe) to denote different possible sets of characters.
 
([cb]ats*|[dh]ogs?)     would match either cats or bats, or, dogs or hogs.

Here we will se the examples from this website and my answer vs their answer on the website ]

NO NEED TO TRY THESE CODES, IT IS JUST HOW TO MATCH THE EXPRESSIONS AND IF YOU NEED TO PRACTICE GO THE WEBSITE 

comment0

## There are many examples on the website and I will show some of them  

##---------------------------------
## Example No 1 : 
##---------------------------------

Match	abcdefg	Success
Match	abcde	Success
Match	abc	Success

# my answer -->  [a-g]+

# website answer --> abc


##---------------------------------
## Example No 2 : 
##---------------------------------
        
Match	cat.	To be completed
Match	896.	To be completed
Match	?=+.	To be completed
Skip	abc1


# my answer -->  ...\.

##---------------------------------
## Example No 3 : 
##---------------------------------

Match	can	To be completed
Match	man	To be completed
Match	fan	To be completed
Skip	dan	To be completed
Skip	ran	To be completed
Skip	pan

# my answer -->  ^[cmf]an$

# website answer --> [^drp]an 


##---------------------------------
## Example No 4 : 
##---------------------------------

Match	hog	To be completed
Match	dog	To be completed
Skip	bog

# my answer --> [^b]og

# website answer --> [hd]og 

##---------------------------------
## Example No 5 : 
##---------------------------------

Match	Ana	To be completed
Match	Bob	To be completed
Match	Cpc	To be completed
Skip	aax	To be completed
Skip	bby	To be completed
Skip	ccz

# my answer -->  [A-C].[a-c]

# website answer --> [A-C][n-p][a-c]


##---------------------------------
## Example No 6 : 
##---------------------------------

Match	wazzzzzup	Success
Match	wazzzup	Success
Skip	wazup

# my answer -->       wa\w{2,5}up
# website answer -->  waz{3,5}up



##---------------------------------
## Example No 7 : 
##---------------------------------

Match	aaaabcc	Success
Match	aabbbbc	Success
Match	aacc
Skip	a


# my answer --> a+b*c+
# website answer --> aa+b*c+
# website answer --> a{2,4}b{0,4}c{1,2}

##---------------------------------
## Example No 8 : 
##---------------------------------


Match	1 file found?	To be completed
Match	2 files found?	To be completed
Match	24 files found?	To be completed
Skip	No files found.

# my answer -->  \d(1,2)

 # website answer --> \d+ files? found\?



##---------------------------------
## Example No 9 : 
##---------------------------------

Match	1.   abc	Success
Match	2.	abc	Success
Match	3.           abc	Success
Skip	4.abc

# my answer -->  [^4]\.
# website answer --> \d\.\s+abc



##---------------------------------
## Example No 10 : 
##---------------------------------

Match	Mission: successful	To be completed
Skip	Last Mission: unsuccessful	To be completed
Skip	Next Mission: successful upon capture of target


# my answer -->   ^[M]ission:\ssuccessful$
# website answer --> ^Mission: successful$ 



##---------------------------------
## Example No 11 : 
##---------------------------------

Capture	file_record_transcript.pdf	file_record_transcript	
Capture	file_07241999.pdf	file_07241999	
Skip	testfile_fake.pdf.tmp

# my answer -->   ^(file_.+)\.pdf$
# website answer --> ^(file.+)\.pdf$



##---------------------------------
## Example No 12 : 
##---------------------------------

Capture	Jan 1987
Capture	May 1969
Capture	Aug 2011

# my answer -->    (\w+ (\d{4}))
# website answer --> (\w+ (\d+)).



##---------------------------------
## Example No 13 : 
##---------------------------------
Capture	1280x720	1280 720	
Capture	1920x1600	1920 1600	
Capture	1024x768	1024 768	


# my answer -->    (\d{4})x(\d{3,4})
# website answer --> (\d+)x(\d+)



##---------------------------------
## Example No 14 : 
##---------------------------------

Match	I love cats	Success
Match	I love dogs	Success
Skip	I love logs	To be completed
Skip	I love cogs

# my answer -->   I love (cats|dogs)



##---------------------------------
## Example No 15 : 
##---------------------------------


Exercise 15: Matching Other Special Characters
Task	Text	 
Match	The quick brown fox jumps over the lazy dog.	
Match	There were 614 instances of students getting 90.0% or above.	
Match	The FCC had to censor the network for saying &$#*@!.

# my answer -->    The.*.$

##---------------------------------
## Example No 16 : 
##---------------------------------

Match	   3.14529	
Match	   -255.34	
Match	   128	
Match	   1.9e10	
Match	   123,340.00	
Skip	   720p

# website answer --> ^-?\d+(,\d+)*(\.\d+(e\d+)?)?$



##---------------------------------
## Example No 17 : 
##---------------------------------

Task	    Text	                   Capture Groups	 
Capture	    415-555-1234	           415	
Capture	    650-555-2345	           650	
Capture	    (416)555-3456	           416	
Capture	    202 555 4567	           202	
Capture	    4035555678	               403	
Capture	    1 416 555 9292	           416	

# my answer -->  (\d{3})  

# website answer -->  1?[\s-]?\(?(\d{3})\)?[\s-]?\d{3}[\s-]?\d{4}