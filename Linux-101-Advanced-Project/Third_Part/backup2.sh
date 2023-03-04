#!/bin/bash

# Define the backup directory. [I changed this path (BACKUP_DIR="/mnt/backup") to share the result with you]
BACKUP_DIR="/home/ec2-user/Linux-101-Advanced-Project/Third_Part/backup"

# Define the directories to be backed up
DIRECTORIES=("/home/ec2-user/Linux-101-Advanced-Project/Third_Part/data")

# Get the hostname of the instance
HOSTNAME=$(hostname)

# Get the current date and time
DATE=$(date +%F-%H-%M)

# Create the backup directory if it doesn't exist
if [ ! -d "$BACKUP_DIR" ]
then
    mkdir "$BACKUP_DIR"
fi

# Iterate through the directories to be backed up
for DIR in "${DIRECTORIES[@]}"
do
    # Create the filename for the backup
    FILENAME="$BACKUP_DIR/$HOSTNAME-$DATE-$(basename $DIR).tgz"

    # Create the backup using tar
    tar -zcvf "$FILENAME" "$DIR"

    # Print the backup file name
    echo "Backup file: $FILENAME"
done

# -------------
# To set this script for executing in every 5 minutes, we'll create cronjob
# I set it to 1 per minute to see the result immediately (*/1 * * * *). Every 5 minutes for a long time (*/5 * * * *).
# touch mycron
# echo "*/1 * * * *  sudo /home/ec2-user/Linux-101-Advanced-Project/Third_Part/backup2.sh" >> mycron
# crontab mycron
# rm mycron
# -------------
# Run "sed -i -e 's/\r$//' scriptname.sh" command before running script.