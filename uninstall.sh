#!/bin/bash

DOTFILES_DIR="${HOME}/.dotfiles"
FILES=".bashrc .zshrc .vimrc .minttyrc .gitconfig .fonts .tmux.conf .clang-format .globalrc"
OLD_DOTFILES_DIR=${DOTFILES_DIR}/OldDotFiles

if [[ -d ${OLD_DOTFILES_DIR} ]]; then

    echo "Removing all dotfiles within your home directory..."
    for file in ${FILES}; do
    	rm -rf ${HOME}/${file}
    done
    				
    echo "Reverting back to your previous settings..."
    for file in ${OLD_DOTFILES_DIR}; do
    	mv ${OLD_DOTFILES_DIR}/${file} ${HOME}/${file}
    done
    
    cd ${HOME}
    rm -rf ${DOTFILES_DIR}
    echo "Uninstall complete!"
fi

