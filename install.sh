#!/usr/local/bin/env bash

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

export ZSH_CUSTOM=~/.zsh_custom

ln -sfv ~/.dotfiles/.zshrc ~
ln -sfv ~/.dotfiles/.gitconfig ~
ln -sfv ~/.dotfiles/.vimrc ~

#Theme
npm install --global pure-prompt

source ~/.zshrc
