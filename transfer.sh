#!/bin/bash

# Variables
SOURCE_DIR="/home/ubuntu/mongodb/cars"
#FILE_TO_TRANSFER=""
FTP_SERVER="uwaco.net"
FTP_USERNAME="junior.ntui"
FTP_PASSWORD="r#dQf@2ha5rCwWh&ZEAD4nWRa3KF@nWCfTZ45Vg^"
REMOTE_DESTINATION="/mongodb-backup"
       

# Connect to the FTP server and upload the file
{
  # Start an FTP session and suppress interactive prompts
  echo "open $FTP_SERVER"
  echo "user $FTP_USERNAME $FTP_PASSWORD"

  # Change to binary mode for non-text files (optional)
  echo "binary"

  # Upload the file
  echo "put $SOURCE_DIR $REMOTE_DESTINATION"

  # Close the FTP session
  echo "bye"
} | ftp -n

