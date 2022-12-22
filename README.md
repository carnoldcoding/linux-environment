# Linux Environment
This repository serves as a guide to install my linux development configurations for Linux Mint. Each instruction assumes completion of the last.
First you must clone this repository.
## Automated Installation
Clone the repository, then run ```/scripts/install-wizard``` to begin installation.
These scripts install the following tech stack:
### Script Install Stack
* ZSH || OhMyZsh
  * Powerline Fonts || MesloLGM NF
  * PowerLevel10k (Powerline)
* TMUX || TPM (TMUX Package Manager)
  * Power Theme
* NVIM || Packer (Vim Package Manager)
  * Lualine
  * OneDarkPro (Theme)
  * LSPConfig
  * TreeSitter (Better Highlighting)

## Language Server Protocol For NVIM
Language Server Protocol (LSP) allows programming language developers to create one set of rules for their language that can be adopted by any IDE as long as the IDE supports LSP. This way developers don't have to continuously create multiple versions of their language for each major IDE.

LSP's are installed globally, because they are not specific to the NVIM environment, they are just supported by it through use of LSPConfig. This also means that if you're having an issue with LSP and Nvim, you should also make sure your node/npm versions are up to date, and the language server was installed properly on your shell of choice.

### LSPs
* Tsserver
