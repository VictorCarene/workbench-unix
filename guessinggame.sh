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

#all files include hidden files
files_count=$(find . -maxdepth 1 -type f -exec echo basename {} \; | wc -l)
#echo $files_count

while [[ $files_count -ne $attempt ]]
do
  read -r -p "Input guess: " attempt
  if [[ $attempt =~ ^[0-9]+$ ]]
  then
    check_guess $attempt $files_count
    echo ""
  else
    echo "Input Only Digital"
    attempt=-1
  fi
done
