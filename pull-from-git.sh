#!/usr/bin/env bash
source config.sh

# This gets the location of the current script
DIR=$(cd $(dirname $0) && pwd)

git pull

# Loop dot files and copy to local
for dotfile in "${dotfiles[@]}";do
 cp "${DIR}/${dotfile}" "${HOME}"
done

# Loop dot directories and copy to local
for dotdir in "${dotdirs[@]}";do
 cp -r "${DIR}/${dotfile}" "${HOME}"
done