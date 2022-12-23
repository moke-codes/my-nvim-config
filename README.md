
# My NVIM Configuration

## Installing

Pre-requisites:

- Install Neovim  0.9.0 or higher
- Install gcc

    - Linux: sudo apt install build-essential
    - Homebrew: brew install gcc

- Install Packer: 
    
    git clone --depth 1 https://github.com/wbthomason/packer.nvim\
         ~/.local/share/nvim/site/pack/packer/start/packer.nvim 

- Press `<space>ff` (or type `:Ex`) and go to the file packer.lua.
- Execute the command `:so`, and then `:PackerSync`.
