#!/usr/local/bin/env bash

# Install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#Install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install node js
brew install node

# Install Go
brew install go

# Install Google Cloud SDK
url=https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-212.0.0-darwin-x86_64.tar.gz
wantedsum=ea1bf841892dc89dd24685e281d5c301bf8a764eb41b595ca06279088be4afad
outputfile=gcsdk.tar.gz
echo "Downloading Google Cloud SDK..."
curl -L -v  $url -o $outputfile 2>> /dev/null
calcsum=$(shasum -a 256 $outputfile | awk '{print $1}')

if [ "$calcsum" = "$wantedsum" ]; then
  echo "Extracting..."
  tar -xvzf $outputfile
fi
rm -rf $outputfile
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

source ~/.zshrc
