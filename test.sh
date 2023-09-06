#!/bin/bash
  
# Variables
#SOURCE_DIR="/home/ubuntu/mongodb/cars"
#FILE_TO_TRANSFER=""
#FTP_SERVER="uwaco.net"
#FTP_USERNAME="junior.ntui"
#FTP_PASSWORD="r#dQf@2ha5rCwWh&ZEAD4nWRa3KF@nWCfTZ45Vg^"
#REMOTE_DESTINATION="/mongodb-backup"


# Get the FTP server IP address
ftp_server="uwaco.net"

# Get the FTP server username
ftp_username="junior.ntui"

# Get the FTP server password
ftp_password="r#dQf@2ha5rCwWh&ZEAD4nWRa3KF@nWCfTZ45Vg^"

# Connect to FTP server
ftp -n $ftp_server
# <<END_SCRIPT
quote USER $ftp_username
quote PASS $ftp_password

# Transfer file(s)
#cd $REMOTE_DIR
#lcd $LOCAL_DIR
#put file.txt

# End FTP session
#quit
#END_SCRIPT
#exit 0

# Upload the file
#put file_to_upload

# Close the FTP connection
#bye

# Print a success message
#echo "File uploaded successfully!"
