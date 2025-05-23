#!/bin/bash
# This script will Start Postal as SMTP and Worker Servers Only.
# Created By : Eng. Mohamed Kamal
# Email      : Mr.peacock2@gmail.com
# Phone      : +201062008120


read -p "Enter the new hostname: " NEW_HOSTNAME

# Check if user entered a value
if [ -z "$NEW_HOSTNAME" ]; then
  echo "No hostname entered. Exiting."
  exit 1
fi
hostnamectl set-hostname "$NEW_HOSTNAME"
echo "Changing hostname to '$NEW_HOSTNAME'..."
sleep 2
cd /etc
rm -rf hosts
wget https://raw.githubusercontent.com/mrkimoz/postal/refs/heads/main/hosts

cat /etc/hosts
