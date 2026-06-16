#!/bin/bash

echo "Starting Termux environment setup..."

# 1. Update system and install dependencies
pkg update && pkg upgrade -y
pkg install git curl zsh -y

# 2. Install Oh My Zsh (unattended mode so it doesn't pause the script)
echo "Installing Oh My Zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# 3. Clone your favorite plugins
echo "Installing plugins..."
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Add any other themes or plugins you use here (e.g., Powerlevel10k)
# git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# 4. Download your custom .zshrc directly from your GitHub repo
echo "Fetching your custom .zshrc..."
```bash
cp .zshrc ~/.zshrc
# 5. Change default shell to Zsh
chsh -s zsh

echo "Setup complete! Please restart Termux."
