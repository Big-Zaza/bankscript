#!/bin/bash

n=3

# Create a folder with the current date in the second server
current_date=$(date +"%Y-%m-%d")

sshpass -p "team4" ssh 172.31.95.52 " mkdir /home/ubuntu/$current_date"


# Transfer the files from the source server to the destination server
sshpass -p "team4" scp -r /home/ubuntu/mongodb/* ubuntu@172.31.95.52:/home/ubuntu/$current_date

# Print a message showing the status
if [ $? -eq 0 ]; then
  echo "The file transfer was successful!"
else
  echo "The file transfer failed!"
fi
 

# Calculate the current date - n
foldername=$(date -d "$current_date - $n days" +"%Y-%m-%d")


# Check if the directory exists
sshpass -p "team4" ssh 172.31.95.52 " if [ ! -d "$foldername" ]; then
  echo "The directory $foldername does not exist!"
  exit 1
else
rm -rf /home/ubuntu/$foldername 
echo "Directory $foldername deleted successfully!"
fi "

