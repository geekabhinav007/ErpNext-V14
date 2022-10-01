#!/bin/bash

sudo apt clean 

sudo apt-get update -y

sudo apt upgrade -y 

sudo apt install aptitude -y

# We create this user as a security measure to prevent root user access.
# you can change username here change the "frappe-user" to "Username"

sudo adduser frappe-user

# This user will be assigned admin permissions and will be used as the main Frappe Bench user

sudo usermod -aG sudo frappe-user
su frappe-user 
cd /home/frappe-user/