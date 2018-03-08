#!/bin/sh

git submodule update --init

./manage-symlinks.sh -i

./scripts/install-vim.sh

unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=linux;;
    Darwin*)    machine=mac;;
    *)          machine="UNKNOWN:${unameOut}"
esac

./scripts/install-${machine}.sh

