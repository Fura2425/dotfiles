defaults write com.apple.finder AppleShowAllFiles TRUE
killall Finder

cd ~/dotfiles
echo 'install CommandLineTool...'
xcode-select --install
echo 'installed CommandLineTool'

echo 'install Homebrew...'
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'installed Homebrew'

echo "run brew doctor..."
brew doctor
echo "OK, run brew update..."
brew update
echo "OK, run brew upgrade..."
brew upgrade

echo 'install brew formula...'
brew bundle --global
echo 'installed brew formula'

brew cleanup

