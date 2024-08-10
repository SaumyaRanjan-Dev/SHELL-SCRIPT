# Shell Script for User Management, Backup, and System Monitoring

## Overview

This shell script automates various system administration tasks, including user management, directory backups, and system monitoring. It allows you to:
- Add and delete user accounts
- List all users
- Backup user home directories
- Check RAM and storage usage
- Test network connectivity

## Features

- **User Management:**
  - Add a new user
  - Delete an existing user
  - List all system users

- **Backup:**
  - Backup user home directories to a specified location

- **System Monitoring:**
  - Check RAM usage
  - Check storage usage
  - Check network connectivity by pinging a specified website

## Requirements

- Linux (Ubuntu recommended)
- Bash Shell
- Git
- Optional: AWS CLI for advanced backup features

## Installation and Usage

1. **Clone the Repository**

   ```bash
   git clone https://github.com/your-username/your-repository.git
   cd your-repository
   ```

2. **Make the Script Executable**

   ```bash
   chmod +x user_management_and_backup.sh
   ```

3. **Run the Script**

   ```bash
   ./user_management_and_backup.sh
   ```

4. **Select an Option from the Menu**

   The script will display a menu with the following options:

   ```
   1: Add User
   2: Delete User
   3: List Users
   4: Backup User Directories
   5: Check RAM Usage
   6: Check Storage Usage
   7: Check Network Connectivity
   8: Exit
   ```

   Example:
   - To add a new user, select option `1`, then enter the username when prompted.
   - To backup user directories, select option `4`, then provide the path where you want the backup to be stored.

## Additional Features

- **Version Control:** The script is managed using Git and GitHub for version control. Make sure to commit and push changes regularly.
- **AWS Integration (Optional):** You can extend the script to upload backups to AWS S3 using the AWS CLI.
