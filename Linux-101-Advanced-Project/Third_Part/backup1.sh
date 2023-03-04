#!/bin/bash

# Check if we are root privilage or not
if [[ ${UID} -ne 0 ]]
then
   echo "Please use this bash script with root privilage"
   exit 1
fi

# Which files are we going to back up. Please make sure to exist /home/ec2-user/data file
backup_files="/home/ec2-user/Linux-101-Advanced-Project/Third_Part/data"
# Where do we backup to. Please crete this file before execute this script [I changed this path (dest="/mnt/backup") to share the result with you].
dest="/home/ec2-user/Linux-101-Advanced-Project/Third_Part/backup"
# Create archive filename based on time
time=$(date +"%Y_%m_%d_%I_%M_%p")
hostname=$(hostname -s)
archive_file="${hostname}-${time}.tgz"
# Print start status message.
echo "We will back up ${backup_files} to ${dest}/${archive_file} "
date
echo
# Backup the files using tar.
tar czf ${dest}/${archive_file} ${backup_files}
# Print end status message.
echo
echo "Congrulations! Your Backup is ready"
date
# Long listing of files in $dest to check file sizes.
ls -lh $dest
# -------------

# /etc/crontab path
# To set this script for executing in every 5 minutes, we'll create cronjob
# ```bash
# crontab -e
# ```
# # - vi or nano editor will open. We will run  backup.sh script in every 5 minutes. To be able to do this we\'ll write this within opend vi or nano file

# ```bash 
# I set it to 1 per minute to see the result immediately (*/1 * * * *). Every 5 minutes for a long time (*/5 * * * *).

# */1 * * * * sudo /home/ec2-user/Linux-101-Advanced-Project/Third_Part/backup1.sh

# ```
# # - save and exit from nano or vi
# # - To check whether your Cron Jobs is saved or not, run the below command.

# ```bash
# $crontab -l
# ```
# -----------
# Run "sed -i -e 's/\r$//' scriptname.sh" command before running script.
