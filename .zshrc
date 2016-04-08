__load() {

    local DEBUG=""
    [ -n "$DEBUG" ] && set -x

    ZDOTDIR=$HOME
    ZSH_CACHE_DIR=$ZDOTDIR/.zcache
    ZSH_DIR=$ZDOTDIR/.zsh

    . $ZSH_DIR/lib/util.zsh

    local theme="default"

    local modules_dir=$ZSH_DIR/modules
    local local_dir=$ZSH_DIR/local
    local themes_dir=$ZSH_DIR/themes
    local prompts_dir=$ZSH_DIR/prompts
    local completions_dir=$ZSH_DIR/completions

    local theme_dir="$themes_dir/$theme"
    local prompt_dir="$theme_dir"
    local local_host_dir=$(local_dir_get $local_dir)

    zplug_load
    theme_load "$theme_dir"
    modules_load "$modules_dir"
    local_load "$local_host_dir"
    prompt_load "$local_host_dir" "$prompts_dir" "$prompt_dir" "1"
    completions_load "$completions_dir"
    zplug_run

    set +x
}

__load
