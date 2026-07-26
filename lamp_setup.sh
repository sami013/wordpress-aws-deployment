#!/bin/bash

#############################################
# Author: Sami-ur-rehman
# Date: 26/07/2026
#
# Version: V1
#
# This script installs the required packages
# to host a WordPress website on Ubuntu.
#############################################

set -e

echo "Updating package list..."
sudo apt update

echo "Upgrading installed packages..."
sudo apt upgrade -y

echo "Installing Apache..."
sudo apt install apache2 -y

echo "Installing PHP..."
sudo apt install php libapache2-mod-php php-mysql php-cli php-curl php-xml php-mbstring php-zip php-gd -y

echo "Installing MySQL..."
sudo apt install mysql-server -y

echo "Enabling Apache..."
sudo systemctl enable apache2
sudo systemctl start apache2

echo "Enabling MySQL..."
sudo systemctl enable mysql
sudo systemctl start mysql

echo "Installation completed successfully!"
