#### Philip M. Gollucci's home dir

## Dependencies
- Freebsd 10+/MacOSX El Captain+
- zsh
- perl
- rsync
- git

## Install
```shell
# hinit [-p] [-h] [USER=pgollucci]
curl -o - -s https://raw.githubusercontent.com/pgollucci/home/master/bin/hinit | sh
```

## Setup brew, cask, and install kegs/apps
```shell
$HOME/bin/cellar.sh
```

## Configure OSX
```shell
$HOME/bin/defaults.sh
```

## Install virtual envs
```shell
$HOME/bin/langs.sh
```

## Features
- no shell framework deps
- fully customizable prompt/theme
- modules, libs, completions
- "local" support
- homebrew setup 

## Configs
- emacs
- irssi
- ssh
- subversion
- gemrc
- pgsql
- ripl

## Modules
- _builtins
- _std
- aws
- bundler
- emacs
- git
- irc
- ls
- plenv
- poudriere
- pyenv
- rbenv
- ssh
- svn
- zfs
- zsh

## Prompts
- aws
- blank
- dir
- git
- nl
- plenv
- pyenv
- rbenv
- std
