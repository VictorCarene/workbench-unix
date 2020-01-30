#!/bin/bash

function check_guess {

    if [[ $1 -gt $2 ]]
    then
    	echo "It's high!"
    elif [[ $1 -lt $2 ]]
    then
    	echo "It's low!"
    else
    	echo "Congratualations! You've inputed right number = $files_count"
    fi  

}

files_count=$(ls | wc -l)
#echo $files_count

while [[ $files_count -ne $attempt ]]
do
  read -p "Input guess=" attempt
  echo $(check_guess $attempt $files_count)
  echo ""
done
