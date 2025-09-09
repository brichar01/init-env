# Prerequisites:
- sudo apt update
- sudo apt upgrade
- sudo apt install curl git libarchive-tools xclip cmake

## github setup
- ssh-keygen
- upload to github
- git config --global user.email "bdvrichards@gmail.com"
- git config --global user.name "Ben Richards"
- git config --global init.defaultBranch main

## Install btop
- mkdir tmp && cd tmp
- curl -fsSL https://github.com/aristocratos/btop/releases/download/v1.4.4/btop-x86_64-linux-musl.tbz | tar -xvj
- cd btop
- sudo make install
- cd ../
- rm -rf btop

## Install wezterm:
- curl -fsSL https://apt.fury.io/wez/gpg.key | sudo gpg --yes --dearmor -o /usr/share/keyrings/wezterm-fury.gpg
- echo 'deb \[signed-by=/usr/share/keyrings/wezterm-fury.gpg\] https://apt.fury.io/wez/ * *' | sudo tee /etc/apt/sources.list.d/wezterm.list
- sudo chmod 644 /usr/share/keyrings/wezterm-fury.gpg

## Install nerd font:
- mkdir ~/.local/share/fonts
- curl -L https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/JetBrainsMono.zip | bsdtar -xzf- -C ~/.local/share/fonts/

## Install nvim
- mkdir ~/extern && cd ~/extern
- git clone git@github.com:neovim/neovim.git
- cd neovim
- make CMAKE_BUILD_TYPE=RelWithDebInfo
- make install

## Install NvChad deps
- curl -LO https://github.com/BurntSushi/ripgrep/releases/download/14.1.0/ripgrep_14.1.1-1_amd64.deb
- sudo dpkg -i ripgrep_14.1.1-1_amd64.deb

## NvChad
- git clone git@github.com:brichar01/nvim-starter.git ~/.config/nvim
- cd ~/.config/nvim 
- git checkout brichar01
- nvim -> :MasonInstallAll

## UV for python management
- curl -LsSf https://astral.sh/uv/install.sh | sh

## Pyenv for pyenv global
- curl -fsSL https://pyenv.run | bash
- echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
- echo '[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
- echo 'eval "$(pyenv init - bash)"' >> ~/.bashrc
- Python build deps

sudo apt update; sudo apt install make build-essential libssl-dev zlib1g-dev \\
libbz2-dev libreadline-dev libsqlite3-dev curl git \\
libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev

- pyenv install 3.12
- pyenv global 3.12

# TO DO:
Look into configuring Nvim with https://github.com/mfussenegger/nvim-dap and https://github.com/mfussenegger/nvim-dap-python?tab=readme-ov-file 
Look into setting up: https://github.com/jedrzejboczar/nvim-dap-cortex-debug

>>>>>>> 7b2928a (TO DO section)
