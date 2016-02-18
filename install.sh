#!/bin/bash

SCRIPT_REL_DIR=$(dirname "${BASH_SOURCE[0]}")
INSTALL_DIR="$( cd "${SCRIPT_REL_DIR}/.." && pwd )"

# Install plugin submodules
(cd "${INSTALL_DIR}/.vim"; git submodule update --init)

# Backup existing vimrc, if it exists
if [ -e "${INSTALL_DIR}/.vimrc" ]
then
    mv "${INSTALL_DIR}/.vimrc" "${INSTALL_DIR}/.vimrc.orig"
fi

# Create symlink to vimrc located in repo
ln -s "${INSTALL_DIR}/.vim/.vimrc" "${INSTALL_DIR}/.vimrc"

# Download custom color scheme
wget -O "${INSTALL_DIR}/.vim/bundle/vim-colorschemes/colors/molokai2.vim" "https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim"

# Configure Git
git config --global user.email "r.a.stratton88@gmail.com"
git config --global user.name "Robert Stratton"
git config --global color.ui "auto"
