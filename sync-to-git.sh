#!/bin/bash

# This gets the location of the current script
DIR=$(cd $(dirname $0) && pwd)

# Array of tracked dot files
dotfiles=(".zshrc" ".gitconfig" ".gitignore")
dotdirs=(".warp")

# Loop dot files and copy them here
for dotfile in "${dotfiles[@]}";do
 cp "${HOME}/${dotfile}" "${DIR}"
done

# Loop dot directories and copy them here
for dotdir in "${dotdirs[@]}";do
 cp -r "${HOME}/${dotfile}" "${DIR}"
done