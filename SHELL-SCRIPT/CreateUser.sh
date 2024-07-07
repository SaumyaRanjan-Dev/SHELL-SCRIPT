#!/bin/bash

: << disclaimer
1
2
3
disclaimer

for (( i=1 ; i <= 5; i++ ))
do
    read -p "Enter username: " username
    read -p "Enter password: " password

    sudo useradd -m $username -p $password

    if [ $? -eq 0 ]; then
        echo "User $username created successfully"
    else
        echo "Failed to create user $username"
    fi
done
