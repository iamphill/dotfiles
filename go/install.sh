#!/bin/sh

GO_VERSION="go1.4"

if ! [ -e "$HOME/.gvm/scripts/gvm" ]
then
  echo "==> Installing gvm..."

  curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer | bash

  echo "==> Installed gvm!"
fi

if [[ ! $(which go) || ! $(go version | grep "$GO_VERSION") ]]
then
  echo "==> Installing $GO_VERSION..."

  [[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"

  gvm install $GO_VERSION
  gvm use $GO_VERSION --default

  echo "==> Installed $GO_VERSION!"
fi
