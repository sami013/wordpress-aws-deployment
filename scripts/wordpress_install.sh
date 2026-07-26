#!/bin/bash


set -e

# Check if wordpress already exists
if [ -f /var/www/html/wp-config.php ]; then
    echo "WordPress already installed."
    exit 1
fi

# Update package list
sudo apt update

# Download latest WordPress
cd /tmp
wget -q https://wordpress.org/latest.tar.gz

# Extract files
tar -xzf latest.tar.gz

# Copy WordPress files
sudo cp -r wordpress/* /var/www/html/

# Clean up downloaded files
rm latest.tar.gz
rm -rf wordpress

# Set ownership
sudo chown -R www-data:www-data /var/www/html

# Set permissions
sudo find /var/www/html -type d -exec chmod 755 {} \;
sudo find /var/www/html -type f -exec chmod 644 {} \;

echo "WordPress installation completed."
