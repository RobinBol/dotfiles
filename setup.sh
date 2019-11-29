#!/bin/bash

# Array of tracked dot files
dotfiles=(".zshrc" ".gitconfig", ".gitignore_global")

# Root of dotfiles project
dir="${HOME}/Development/dotfiles"

# Loop dot files and create symlinks to $HOME
for dotfile in "${dotfiles[@]}";do
 ln -sf "${HOME}/${dotfile}" "${dir}"
done