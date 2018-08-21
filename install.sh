#!/usr/local/bin/env bash

export ZSH_CUSTOM=~/.zsh_custom

ln -sfv ~/.dotfiles/.zshrc ~
ln -sfv ~/.dotfiles/.gitconfig ~
ln -sfv ~/.dotfiles/.vimrc ~

#Theme
npm install --global pure-prompt

source ~/.zshrc
