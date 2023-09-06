#!/bin/bash

# Request for the directory name
read -p "Enter the date of the directory that you want to delete in the format of yy-mm-dd: " directory_name

# Check if the directory exists
if [ ! -d "$directory_name" ]; then
  echo "The directory $directory_name does not exist!"
  exit 1
fi

# Delete the directory
echo "Deleting directory $directory_name..."
sleep 4

# Use the absolute path of the directory
directory_path=$(readlink -f "$directory_name")

# Delete the directory using the rm -rf command
rm -rf "$directory_path"

# Print a success message
echo "Directory deleted successfully!"


