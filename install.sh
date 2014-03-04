#!/bin/sh

(cd ~/.vim; git submodule update --init)

if [ -e ~/.vimrc ]
then
    mv ~/.vimrc ~/.vimrc.orig
fi
ln -s `pwd`/.vimrc ~/.vimrc

curl "https://raw.github.com/tomasr/molokai/master/colors/molokai.vim" > ~/.vim/bundle/vim-colorschemes/colors/molokai2.vim

git config --global user.email "r.a.stratton88@gmail.com"
git config --global user.name "Robert Stratton"
git config --global color.ui "auto"
