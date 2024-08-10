#!/bin/bash

# Function to add a user
add_user() {
    read -p "Enter username to add: " username
    sudo useradd -m "$username" && echo "User $username added successfully."
}

# Function to delete a user
delete_user() {
    read -p "Enter username to delete: " username
    sudo userdel -r "$username" && echo "User $username deleted successfully."
}

# Function to list all users
list_users() {
    cut -d: -f1 /etc/passwd
}

# Function to backup user directories
backup_user_directories() {
    read -p "Enter the backup directory path: " backup_dir
    mkdir -p "$backup_dir"
    sudo rsync -av /home/ "$backup_dir" && echo "Backup completed successfully."
}

# Function to check RAM usage
check_ram_usage() {
    echo "RAM Usage:"
    free -h
}

# Function to check storage usage
check_storage_usage() {
    echo "Storage Usage:"
    df -h
}

# Function to check network connectivity
check_network_connectivity() {
    read -p "Enter a website to ping (default: google.com): " website
    website=${website:-google.com}
    echo "Checking connectivity to $website..."
    ping -c 4 "$website"
}

# Main menu
while true; do
    echo "Select an option:"
    echo "1. Add User"
    echo "2. Delete User"
    echo "3. List Users"
    echo "4. Backup User Directories"
    echo "5. Check RAM Usage"
    echo "6. Check Storage Usage"
    echo "7. Check Network Connectivity"
    echo "8. Exit"
    read -p "Enter your choice [1-8]: " choice

    case $choice in
        1) add_user ;;
        2) delete_user ;;
        3) list_users ;;
        4) backup_user_directories ;;
        5) check_ram_usage ;;
        6) check_storage_usage ;;
        7) check_network_connectivity ;;
        8) echo "Exiting..." ; exit 0 ;;
        *) echo "Invalid choice. Please select an option from 1 to 8." ;;
    esac
done
