#!/bin/sh

export NVM_DIR="$HOME/.nvm"

if ! [ -e "$NVM_DIR/nvm.sh" ]
then
  echo "==> Installing NVM..."
  curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.29.0/install.sh | bash

  echo "==> NVM installed!"
fi

if ! [ -e "$NVM_DIR/nvm.sh" ]
then
  version_install="4.0.0"

  if test ! $(node -v | grep "$version_install")
  then
    echo "==> Setting default Node version to $node_version"

    source "$NVM_DIR/nvm.sh"

    nvm install $node_version
    nvm alias default $node_version
    echo "==> Node version set to $node_version"
  fi
fi
