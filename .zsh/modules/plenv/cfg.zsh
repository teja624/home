__setup() {

    export PLENV_ROOT=$HOME/.repos/langs/plenv
    path_if $PLENV_ROOT/bin

    if [ -x $PLENV_ROOT/bin/plenv ]; then
      export HAS_PLENV=1
      eval "$(plenv init - zsh)"
    fi
}

plenv_prompt_info() {
    echo "plenv: [$(plenv_version)]"
}

plenv_version() {

    if [ $HAS_PLENV ]; then
	plenv version-name
    else
	echo "system:$(perl -v 2>&1 | awk '/\(v5/ { print $9 }')"
    fi
}

__setup
