#!/bin/sh


git submodule update --init

./manage-symlinks.sh -i


read -p "What is your git name ? " gitName
read -p "What is your git email ? " gitEmail

git config --global user.name ${gitName}
git config --global user.email ${gitEmail}

./scripts/install-vim.sh

unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=linux;;
    Darwin*)    machine=mac;;
    *)          machine="UNKNOWN:${unameOut}"
esac

./scripts/install-${machine}.sh

