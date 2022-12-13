#!/usr/bin/bash

# Script to install ZSH, and OhMyZSH
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "Oh-My-ZSH Installed"

# Install Powerline Fonts
sudo apt-get install fonts-powerline
sudo apt autoremove
fc-cache -vf
echo "Powerline Fonts Installed"

# Install PowerLevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
echo "PowerLevel10k Installed"
echo "To finish install, set ZSH_THEME='powerlevel10k/powerlevel10k' in ~/.zshrc"
echo "Make sure to set your terminal's font to a powerline-supported one"
