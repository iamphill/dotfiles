#!/bin/sh

if test ! $(which nvm)
then
  echo "==> Installing NVM..."
  curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.29.0/install.sh | bash

  echo "==> NVM installed!"
fi

if test $(which nvm)
then
  node_version="$(node -v)"
  version_install="4.0.0"
  if test ! $(echo "$node_version" | grep -q "version_install")
  then
    echo "==> Setting default Node version to $node_version"
    export NVM_DIR="$HOME/.nvm"
    source "$NVM_DIR/nvm.sh"

    nvm install $node_version
    nvm alias default $node_version
    echo "==> Node version set to $node_version"
  fi
fi
