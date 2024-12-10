#!/bin/bash

# Update the system
sudo yum update -y

# Install Node.js and npm (if not already installed)
if ! command -v node &> /dev/null
then
    curl -sL https://rpm.nodesource.com/setup_14.x | sudo bash -
    sudo yum install -y nodejs
fi

# Create the application directory
sudo mkdir -p /home/ec2-user/app
sudo chown ec2-user:ec2-user /home/ec2-user/app

# Navigate to the app directory
cd /home/ec2-user/app || exit

# Clean any old files (optional)
rm -rf *

# Install global npm packages if needed
# sudo npm install -g pm2  # Uncomment if you want to use PM2
