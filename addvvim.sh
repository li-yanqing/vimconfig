#!/bin/bash

mv ~/vimconfig ~/.vimconfig
echo "alias vvim='vim -u ~/.vimconfig/.vimrc '" >> ~/.bashrc

. ~/.bashrc

cd ~/.vimconfig
git submodule update --init "vundle"


