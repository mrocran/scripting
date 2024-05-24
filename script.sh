#!/bin/bash

# Ask for a directory name
read -p "Enter the directory: " DIR_NAME

# Create a directory
mkdir $DIR_NAME

# Navigate into the directory and Create three files with extensions .html, .css, and .js
cd $DIR_NAME
touch index.html style.css script.js

# Output success message
echo "Directory $DIR_NAME created with HTML, CSS, and JavaScript files."