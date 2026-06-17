#!/bin/bash

echo "Starting Termux Environment Setup..."

# Update and upgrade all existing packages
echo "Updating packages..."
pkg update -y && pkg upgrade -y

# Install core programming languages and tools
echo "Installing Python, Node.js, and Git..."
pkg install python nodejs-lts git -y

# add more tools here later!


echo "Setup Complete! Your environment is ready."
