#!/bin/bash

# Update package list
sudo apt update

# Download latest WordPress
cd /tmp
wget https://wordpress.org/latest.tar.gz

# Extract files
tar -xzf latest.tar.gz

# Copy WordPress files
sudo cp -r wordpress/* /var/www/html/

# Set ownership
sudo chown -R www-data:www-data /var/www/html

# Set permissions
sudo find /var/www/html -type d -exec chmod 755 {} \;
sudo find /var/www/html -type f -exec chmod 644 {} \;

echo "WordPress installation completed."
