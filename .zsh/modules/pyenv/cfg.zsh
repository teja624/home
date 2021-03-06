__setup() {

    export PYENV_ROOT=$HOME/.repos/langs/pyenv
    path_if $PYENV_ROOT/bin

    if [ -x $PYENV_ROOT/bin/pyenv ]; then
      export HAS_PYENV=1
      eval "$(pyenv init - zsh)"
    fi
}

pyenv_prompt_line() {

    echo "${magenta}pyenv: [$(pyenv_version)]${norm}"
}

pyenv_version() {

    if [ $HAS_PYENV ]; then
	local ver=$(pyenv version-name)
	if [ x"$ver" != x"system" ]; then
	    echo $ver
	else
	    echo "sys:$(python -V 2>&1 | cut -f 2 -d ' ')"
	fi
    else
	echo "sys:$(python -V 2>&1 | cut -f 2 -d ' ')"
    fi
}

__setup
