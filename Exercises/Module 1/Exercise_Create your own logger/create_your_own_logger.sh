#!/bin/bash

read -p "Enter your name: " name
date +"%Y-%m-%d %H:%M:%S"


if [ "$name" == "$USER" ]; then

    echo "Hello $USER. Your log will be appended to a file."
    echo "$( date +'%Y-%m-%d %H:%M:%S' ), User: $USER - Log entry: $USER entered its name" >> user_activity.log

else 
    echo "Invalid user name"
    echo "$( date +'%Y-%m-%d %H:%M:%S' ), User: $USER - Log entry: $USER entered wrong user" >> user_activity.log

fi
