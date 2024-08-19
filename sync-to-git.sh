#!/usr/bin/env bash
source config.sh

# This gets the location of the current script
DIR=$(cd $(dirname $0) && pwd)

# Loop dot files and copy them here
for dotfile in "${dotfiles[@]}";do
 echo "Copying ${HOME}/${dotfile} to ${DIR}"
 cp "${HOME}/${dotfile}" "${DIR}"
done

# Loop dot directories and copy them here
for dotdir in "${dotdirs[@]}";do
 echo "Copying ${HOME}/${dotdir} to ${DIR}"
 cp -r "${HOME}/${dotdir}" "${DIR}"
done