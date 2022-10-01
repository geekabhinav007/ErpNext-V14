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


########################################
######### Dependencies #################
########################################

# install git

sudo apt-get install git

git --version

# install python

sudo apt-get install python3-dev python3.10-dev python3-setuptools python3-pip python3-distutils

# Install Python Virtual Environment

sudo apt-get install python3.10-venv

python3 -V

# Install Software Properties Common (for repository management)

sudo apt-get install software-properties-common