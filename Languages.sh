#!/bin/bash

echo "Starting Termux Environment Setup..."

# Update and upgrade all existing packages automatically
echo "Updating packages..."
pkg update -y && pkg upgrade -y

# Install core programming languages and tools
echo "Installing Python, Node.js, and Git..."
pkg install python nodejs-lts git -y

# You can add more tools here later!
# pkg install rust golang -y

echo "Setup Complete! Your environment is ready."
