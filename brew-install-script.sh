#!/bin/bash

# Check that Homebrew is installed and install if not
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" > /tmp/homebrew-install.log
fi

# Update any existing homebrew recipes
brew update

# Upgrade any already installed formulae
brew upgrade

# Install cask
echo "Installing brew cask..."
brew tap phinze/homebrew-cask

#install basic apps
echo "Installing basic apps..."
brew cask install slack
brew cask install 1password
brew cask install google-chrome
brew cask install firefox
brew cask install iterm2
