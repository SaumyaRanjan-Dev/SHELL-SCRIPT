#!/bin/bash

# Function to create a user
create_user() {
    read -p "Enter the username to create: " username
    sudo adduser $username
}

# Function to delete a user
delete_user() {
    read -p "Enter the username to delete: " username
    sudo deluser --remove-home $username
}

# Function to check RAM usage
check_ram() {
    echo "Checking RAM usage..."
    free -h
}

# Function to check storage usage
check_storage() {
    echo "Checking storage usage..."
    df -h
}

# Function to check network connectivity
check_network() {
    read -p "Enter the hostname or IP address to ping: " host
    ping -c 4 $host
}

# Main menu
while true; do
    echo "----------------------------------"
    echo "System Management Script"
    echo "1. Create a user"
    echo "2. Delete a user"
    echo "3. Check RAM usage"
    echo "4. Check storage usage"
    echo "5. Check network connectivity"
    echo "6. Exit"
    echo "----------------------------------"
    read -p "Please enter your choice: " choice
    
    case $choice in
        1)
            create_user
            ;;
        2)
            delete_user
            ;;
        3)
            check_ram
            ;;
        4)
            check_storage
            ;;
        5)
            check_network
            ;;
        6)
            echo "Exiting..."
            break
            ;;
        *)
            echo "Invalid choice, please try again."
            ;;
    esac
done
