#!/bin/bash

# Check that Homebrew is installed and install if not
if test ! $(which brew)
then
  echo "Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update any existing homebrew recipes
brew update

# Upgrade any already installed formulae
brew upgrade

# Install cask
echo "Installing brew cask..."
brew install cask

#install basic apps
echo "Installing basic apps..."

CASKS=(
    iterm2
    slack
    1password
    google-chrome
    firefox
    zoom
)
echo "Installing cask apps..."
brew cask install ${CASKS[@]}
