#!/bin/bash

SCRIPT_REL_DIR=$(dirname "${BASH_SOURCE[0]}")
INSTALL_DIR="$( cd "${SCRIPT_REL_DIR}/.." && pwd )"

# Backup existing vimrc, if it exists
if [ -e "${INSTALL_DIR}/.vimrc" ]
then
    mv "${INSTALL_DIR}/.vimrc" "${INSTALL_DIR}/.vimrc.orig"
fi

# Create symlink to vimrc located in repo
ln -s "${INSTALL_DIR}/.vim/.vimrc" "${INSTALL_DIR}/.vimrc"

# Configure Git
git config --global user.name "Robert Stratton"
git config --global color.ui "auto"
