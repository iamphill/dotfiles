#!/bin/sh

if test ! $(which brew)
then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

if test $(which brew)
then
  if test ! $(which hub)
  then
    echo "==> Installing hub..."
    brew install hub
    echo "==> Installed hub!"
  fi

  brew install caskroom/cask/brew-cask
  brew tap caskroom/fonts
  brew cask install font-hack
  brew cask install font-fira-mono
  brew cask install font-meslo-lg-for-powerline
fi
