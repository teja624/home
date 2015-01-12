#!/bin/sh

ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

brew doctor
brew update

brew tap homebrew/versions
brew tap homebrew/dupes
brew tap homebrew/binaries

for pkg in git hub irssi nmap rdesktop swaks xz; do
  brew install $pkg
done

for pkg in ilibyaml pyenv; do
  brew install $pkg
done

brew prune
