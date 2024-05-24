#!/bin/bash

# Ask for username
read -p "Enter username: " username

# Check if the username already exists
if id "$username" &>/dev/null; then
            echo "User '$username' already exists."
                exit 1
fi

# Ask for password
read -s -p "Enter password: " password

# Create the user
sudo useradd -m "$username"

# Set the password for the user
echo "$username:$password" | sudo chpasswd

# Output success message
echo "User '$username' created successfully."