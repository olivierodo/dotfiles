#!/bin/sh

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


[ -d ~/bin ] || mkdir ~/bin
curl https://beyondgrep.com/ack-2.22-single-file > ~/bin/ack && chmod 0755 ~/bin/ack

vim -E -s -c "source ~/.vimrc.plugins" -c PlugInstall -c qa

exit 0

