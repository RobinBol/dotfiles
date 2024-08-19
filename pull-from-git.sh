#!/usr/bin/env bash
source config.sh

# This gets the location of the current script
DIR=$(cd $(dirname $0) && pwd)

git pull

# Loop dot files and copy to local
for dotfile in "${dotfiles[@]}";do
 echo "Copying ${DIR}/${dotfile} to ${HOME}"
 cp "${DIR}/${dotfile}" "${HOME}"
done

# Loop dot directories and copy to local
for dotdir in "${dotdirs[@]}";do
 echo "Copying ${DIR}/${dotdir} to ${HOME}"
 cp -r "${DIR}/${dotdir}" "${HOME}"
done