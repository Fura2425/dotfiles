#!/bin/bash

defaults write com.apple.finder AppleShowAllFiles TRUE
killall Finder

cd ~/dotfiles
echo 'install CommandLineTool...'
xcode-select --install
echo 'installed CommandLineTool'

echo 'install Homebrew...'
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'installed Homebrew'

echo "Run brew doctor..."
brew doctor
echo "OK, Run brew update..."
brew update
echo "OK, Run brew upgrade..."
brew upgrade


echo 'brew install formula...'
brew bundle --global
echo 'brew installed formula'

brew cleanup

echo 'Complete!!'
