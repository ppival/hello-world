# Finds a word ($1) in all txt files ($file) in a directory, then shows the total number of times that word occurs
# Author: ppival@gmail.com
# Example: bash wordHunter.sh SearchedWord 

# use the translate command to ceate a new line whenever a space occurs
# pipe this to grep to find all lines with a specific word ($1)
# pipe this to do a word count
# "$1" pulls the first command after the program name in the command line. The use of "" keeps it all together in case you include a space

clear
for file in *.txt
do
	echo "$file has this many words:" 
	tr ' ' '\n' < "$file" | grep -w "$1" | wc -l
done
