#!/usr/bin/env bash

DOTFILES=$(cd $(dirname "${BASH_SOURCE[0]}" ) && pwd)

# Create the backup directory if it doesn't exist
mkdir -p $HOME/.config/.dotfiles-backup

# Define an array of file paths to move or copy
declare -a files_to_move=(
    "$HOME/.config/fish"
    "$HOME/.config/tmux"
    "$HOME/.config/nvim"
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
ln -s "$DOTFILES/kitty" "$HOME/.config/fish"

rm -rf "$HOME/.config/tmux"
ln -s "$DOTFILES/tmux" "$HOME/.config/tmux"

rm -rf "$HOME/.config/nvim"
ln -s "$DOTFILES/nvim/user" "$HOME/.config/nvim"
