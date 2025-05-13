#!/bin/bash
# This script will Start Postal as SMTP and Worker Servers Only.
# Created By : Eng. Mohamed Kamal
# Email      : Mr.peacock2@gmail.com
# Phone      : +201062008120

# Bootstraping Postal
postal stop
cd /opt/postal/config/
wget https://raw.githubusercontent.com/mrkimoz/postal/refs/heads/main/API-postal.yml
mv /opt/postal/config/postal.yml /opt/postal/config/postal.yml.original
cp -r API-postal.yml postal.yml
mv /opt/postal/install/docker-compose.yml /opt/postal/install/docker-compose.yml.old
cd /opt/postal/install/
wget https://raw.githubusercontent.com/mrkimoz/postal/refs/heads/main/WEB-Compose.yml
cp -r WEB-Compose.yml docker-compose.yml
postal start
