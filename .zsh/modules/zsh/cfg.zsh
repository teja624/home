zshr() {
  local cache=$ZDOTDIR/.zcache
  autoload -U zrecompile
  autoload -Uz compinit && compinit -C -d ~/.zcompdump

  local f
  for f in ~/.zshrc "$cache/zcomp-$HOST"; do
    zrecompile -p $f && command rm -f $f.zwc.old
  done

  exec $SHELL -l
}

__setup() {

  alias zshe="$EDITOR ~/.zshrc"
  alias ee="$EDITOR ~/.emacs.d/init.el"

  . ${___dir}/colors.zsh
  . ${___dir}/history.zsh
  . ${___dir}/sudo.zsh
}

__setup
