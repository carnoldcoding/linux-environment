# Linux Environment
This repository serves as a guide to install my linux development configurations for Linux Mint. Each instruction assumes completion of the last.
First you must clone this repository.

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
Open and install the four powerline fonts located in this repository's font folder. Once installed, go to your shell's preferences and set the custom font to match a powerline-supported one.

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
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux
```
Once this code has been run, copy the contents of ```dotfiles/tmux.conf``` ```~/.config/tmux/tmux.conf```

To synchronize the configurations with TMUX, run the following. (This needs to be run anytime tmux.conf is changed, which is why our config binds 'prefix+r' to source the file for us.
```bash
tmux source ~/.config/tmux/tmux.conf
```

TMUX is written in C, and tmux.conf is a series of tmux-commands that execute from top to bottom. The complete list of TMUX Commands is listed [here](https://linux.die.net/man/1/tmux).

## NEOVIM
### Install
```bash
sudo apt install neovim
```
### Install Packer
Packer is a lightweight lua-based package manager for NVIM. Extremely easy to use and extensible, run this script to install
```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
Packer allows for modular package management in NVIM.
