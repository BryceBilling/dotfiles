#!/usr/bin/env bash

if [[ $OSTYPE == 'darwin'* ]]; then
	echo 'macOS'
	brew install ripgrep
	brew uninstall --ignore-dependencies node
	brew uninstall --force node
	brew install nvm
	mkdir ~/.nvm 
	export NVM_DIR=~/.nvm
	source $(brew --prefix nvm)/nvm.sh	
    brew install fd
fi

if [[ $OSTYPE == 'linux-gnu'* ]]; then
	echo 'arch/manjaro'
	sudo pacman -S nvm
	sudo pacman -S ripgrep
    sudo pacman -S fd
fi

#install packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# install copilot
git clone https://github.com/github/copilot.vim.git \
  ~/.config/nvim/pack/github/start/copilot.vim

DOTFILES=$(cd $(dirname "${BASH_SOURCE[0]}" ) && pwd)

# Create the backup directory if it doesn't exist
mkdir -p $HOME/.config/.dotfiles-backup

# Define an array of file paths to move or copy
declare -a files_to_move=(
    "$HOME/.config/fish"
    "$HOME/.config/tmux"
    "$HOME/.config/nvim"
    "$HOME/.config/alacritty"
)

# Loop through the array and move or copy the files
for file_path in "${files_to_move[@]}"; do
    if [ -e "$file_path" ]; then
        if [ -L "$file_path" ]; then
            if [ -d "$file_path" ]; then
                cp -r "$(readlink "$file_path")" "$HOME/.config/.dotfiles-backup"
            else
                cp "$(readlink "$file_path")" "$HOME/.config/.dotfiles-backup"
            fi
        else
            mv "$file_path" "$HOME/.config/.dotfiles-backup"
        fi
    fi
done

# Create symlinks to the dotfiles
rm -rf "$HOME/.config/fish"
ln -s "$DOTFILES/fish" "$HOME/.config/fish"

rm -rf "$HOME/.config/alacritty"
ln -s "$DOTFILES/alacritty" "$HOME/.config/alacritty"

rm -rf "$HOME/.config/tmux"
ln -s "$DOTFILES/tmux" "$HOME/.config/tmux"

rm -rf "$HOME/.config/nvim"
ln -s "$DOTFILES/nvim" "$HOME/.config/nvim"
