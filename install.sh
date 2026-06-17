#!/bin/bash

echo "Starting Termux environment setup..."

# 1. Update system and install dependencies
pkg update && pkg upgrade -y
pkg install git curl zsh -y
pkg install figlet

# 2. Install Oh My Zsh 
echo "Installing Oh My Zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# 3. Clone plugins
echo "Installing plugins..."
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting


# 4. Download my custom .zshrc 
echo "Fetching your custom .zshrc..."

curl -o ~/.zshrc https://raw.githubusercontent.com/MUKESH-2999/termux-setup/main/.zshrc

# 5. Change default shell to Zsh
chsh -s zsh

echo "Setup complete! Please restart Termux."
