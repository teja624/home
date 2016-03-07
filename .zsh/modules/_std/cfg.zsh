__setup() {
    path_if $HOME/bin

    alias '_'='sudo'    
    alias rmrf='rm -rf'
    alias cpr='cp -R'
    alias mvf='mv -f'
    alias bclq='bc -lq'
    alias grepr='grep -R'

    alias j='jobs -l'
    alias h='history 25'
    alias duh='du -h'
    alias history='fc -l 1'
    
    alias sha1="openssl dgst -sha1"
    alias sha2="openssl dgst -sha256"
    alias b64="openssl enc -base64"
    alias 256color="export TERM=xterm-256color"
    alias prettyjson="python -mjson.tool"

    alias myip="dig +short myip.opendns.com @resolver1.opendns.com"
    
    alias whichlinux='uname -a; cat /etc/*release; cat /etc/issue'

    alias flushdns='sudo dscacheutil -flushcache'
    alias whotunes='lsof -r 2 -n -P -F n -c iTunes -a -i TCP@`hostname`:3689'

    alias netstat='netstat -an -p tcp'
    alias listen='netstat -an -p tcp | grep LISTEN'
    alias listenu='netstat -an -p udp'
    alias established='netstat -an -p tcp | grep ESTABLISHED'

    alias tarx='tar -xvzof'
    alias tart='tar -tvzf'
}

xclean() {
    find . \( -type f -o -type l \)  -a \
         \( \
	    -name ".DS_Store" -o \
            -name "*.bak" -o \
            -name "*~" -o \
            -name ".\#*" -o \
            -name "\#*" -o \
            -name "*.rej" -o \
            -name "svn-commit.*" -o \
            -name "*.orig" -o \
            -name "*-i" -o \
            -name "*.tmp" -o \
            -name "=~+*" \
        \) \
        -print -exec rm -f "{}" \;
}

mkpasswd() {
  cat /dev/urandom | env LC_CTYPE=C tr -dc a-zA-Z0-9 | head -c $1
  echo
}

__setup
