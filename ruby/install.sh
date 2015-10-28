#!/bin/sh

if test $(which brew)
then
  if test ! $(which rbenv)
  then
    echo "==> Installing rbenv"
    brew update
    brew install rbenv
    echo "==> Installed rbenv!"
  fi

  if test ! $(which ruby-build)
  then
    echo "==> Installing ruby-build"
    brew update
    brew install ruby-build
    echo "==> Installed ruby-build"
  fi

  version_install="2.2.3"

  if ! [ "$(ruby -v | grep $version_install)" ]
  then
    echo "==> Installing Ruby $version_install"
    rbenv install $version_install
    rbenv global $version_install

    echo "==> Ruby version set to $version_install"
  fi
fi
