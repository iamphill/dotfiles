if test $(which brew)
then
  if test ! $(which rbenv)
  then
    brew update
    brew install rbenv ruby-build
  fi

    echo "==> rbenv installed"

  rbenv install 2.2.3
  rbenv global 2.2.3
fi
