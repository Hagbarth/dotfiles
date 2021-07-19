#!/usr/local/bin/env bash

# Install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#Install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/hagbarth/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Install node js
brew install node


# Install Go
brew install go

# Install Google Cloud SDK
brew install pyenv
pyenv install 3.9.1
pyenv global 3.9.1
export CLOUDSDK_PYTHON=python3
curl https://sdk.cloud.google.com | bash
./google-cloud-sdk/install.sh

# Install oh my zsh and set it as default shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s /bin/zsh

# Set zsh configs
export ZSH_CUSTOM=~/.zsh_custom

ln -sfv ~/.dotfiles/.zshrc ~
ln -sfv ~/.dotfiles/.gitconfig ~
ln -sfv ~/.dotfiles/.vimrc ~

#Theme
npm install --global pure-prompt


# Install scripts
chmod +x ~/.dotfiles/scripts/*
sudo cp ~/.dotfiles/scripts/* /usr/local/bin

source ~/.zshrc
