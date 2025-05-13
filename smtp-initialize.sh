#!/bin/bash
# This script will Start Postal as SMTP and Worker Servers Only.
# Created By : Eng. Mohamed Kamal
# Email      : Mr.peacock2@gmail.com
# Phone      : +201062008120

# Bootstraping Postal
postal stop 
cd /opt/postal/config/
wget https://raw.githubusercontent.com/mrkimoz/postal/refs/heads/main/SMTP-postal.yml
mv /opt/postal/config/postal.yml /opt/postal/config/postal.yml.original
cp -r SMTP-postal.yml postal.yml
mv /opt/postal/install/docker-compose.yml /opt/postal/install/docker-compose.yml.old
cd /opt/postal/install/
wget https://raw.githubusercontent.com/mrkimoz/postal/refs/heads/main/SMTP-Compose.yml
cp -r SMTP-Compose.yml docker-compose.yml
postal start
