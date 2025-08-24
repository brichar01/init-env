# Prerequisites:
- sudo apt update
- sudo apt upgrade
- sudo apt install curl git libarchive-tools xclip cmake

# github setup
- ssh-keygen

## Install wezterm:
- curl -fsSL https://apt.fury.io/wez/gpg.key | sudo gpg --yes --dearmor -o /usr/share/keyrings/wezterm-fury.gpg
- echo 'deb [signed-by=/usr/share/keyrings/wezterm-fury.gpg] https://apt.fury.io/wez/ * *' | sudo tee /etc/apt/sources.list.d/wezterm.list
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
- git clone https://github.com/NvChad/starter ~/.config/nvim
- nvim -> :MasonInstallAll

## UV for python management
- curl -LsSf https://astral.sh/uv/install.sh | sh
