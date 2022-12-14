# Linux Environment
This repository serves as a guide to install my linux development configurations for Linux Mint. Each instruction assumes completion of the last.
First you must clone this repository.
## Automated Installation
Clone the repository, then run the bash scripts in this order
* install-tools
* install-zsh

## Manual Installation
Follow the instructions below if you prefer not to use bash scripting to install the configurations.

## Tools
These utilities are necessary to execute some of the following scripts.
```bash
sudo apt install git -y
sudo apt install curl -y
```

## ZSH
### Install ZSH
Complete the setup wizard to generate the default .zshrc file
```bash
sudo apt install zsh
zsh
```

### Install OhMyZSH
```bash
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Install Powerline Fonts
Move all the contents of the ```fonts``` folder to ```~/.fonts``` on your machine. Then execute the command
```bash
fc-cache -f -v
```
Once this has been completed, go into your terminal's preferences and choose one of these four fonts
* MesloLGS NF Regular
* MesloLGS NF Bold
* MesloLGS NF Italic
* MesloLGS NF Bold Italic

This will ensure that the terminal can display powerline's unique characters, and prevent any graphical errors.

### Install Powerlevel10K
This script will install PowerLevel10k
```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```
Once PowerLevel10k has installed, copy the contents of ```dotfiles/.zshrc``` to ```~/.zshrc```

## TMUX
### Install
```bash
sudo apt install tmux
```
### Install TPM
Tmux Package Manager allows for quick and easy extensibility for base TMUX. These commands will create the proper filetree for TMUX/TPM, and install the package manager.
```bash
mkdir ~/.config/tmux
mkdir ~/.config/tmux/plugins
touch ~/.config/tmux/tmux.conf
cd ~/.config/tmux/plugins
git clone https://github.com/tmux-plugins/tpm 
```

### Copy Files
Once this code has been run, copy the contents of ```dotfiles/tmux.conf``` ```~/.config/tmux/tmux.conf```

To synchronize the configurations with TMUX, run the following. (This needs to be run anytime tmux.conf is changed, which is why our config binds 'prefix+r' to source the file for us.
```bash
tmux source ~/.config/tmux/tmux.conf
```
After the file has been sourced, the plugins need to be refreshed.
```bash
# Initialize Plugins
Prefix + I

# Update Plugins
Prefix + U
```
TMUX is written in C, and tmux.conf is a series of tmux-commands that execute from top to bottom. The complete list of TMUX Commands is listed [here](https://linux.die.net/man/1/tmux).

## NEOVIM
### Install
```bash
sudo apt install neovim
```
### Install Packer
Packer is a lightweight lua-based package manager for NVIM that allows for modular package management. Run this script to install..
```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

### Copy Files
Once Packer has been installed, move the ```nvim``` directory into ```~/.config```

Then open vim, and run ```:PackerSync```, ```:PackerCompile``` and ```:PackerUpdate```

At this point everything should be all set to run. Happy Coding!
