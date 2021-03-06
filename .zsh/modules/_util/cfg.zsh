__setup() {

    PERL5LIB=
    export PERL5LIB="$ZSH_DIR/modules/_util/lib/perl5:${PERL5LIB}"
}
__setup

init_cap() {
    local str="$1"

    echo $str | awk '{for(i=1;i<=NF;i++){ $i=toupper(substr($i,1,1)) substr($i,2) }}1'
}

run_parallel() {
    local i="$1"
    local parallel="$2"
    local things="$3"
    shift 3

    local cmd="$1"
    shift 1

    local thing
    for thing in $(echo $things); do
	((i=i%parallel)); ((i++==0)) && wait
	echo "$cmd $@ '$thing'"
	local rc="$($cmd $@ "$thing")" &
    done
}

load_file() {
    local file="$1"

    debug "loading $file"
    [ -r $file ] && . $file
}

mv_file() {
    local src="$1"
    local dst="$2"

    debug "rename $src to $dst"
    mv $src $dst
}

cp_file() {
    local src="$1"
    local dst="$2"

    debug "copy $src to $dst"
    cp $src $dst
}

rm_file() {
    local file="$1"

    debug "remove $file"
    rm -f $file
}

unlink_file() {
    local file="$1"

    debug "unlink $file"
    unlink $file
}

grep_file() {
    local pattern="$1"
    local file="$2"

    debug "match $pattern in $file"
    grep "$pattern" $file
}

time_ma_set() {
    local from="$1"
    local to="$2"

    touch -r $from $to
}

symlink() {
    local to="$1"
    local from="$2"

    ln -s $to $from
}

transliterate() {
    local str="$1"
    local from="$2"
    local to="$3"

    echo $str | tr $from $to
}

json_key_2_value() {
    local key="$1"
    local file="$2"

    if [ x"$file" = x"-" ]; then
	file=""
    else
	file="< $file"
    fi

    awk -v k=$key '$1 ~ k { print $2 }' $file | sed -e 's/[",:]//g' | head -1
}

json_value_2_key() {
    local key="$1"
    local file="$2"

    if [ x"$file" = x"-" ]; then
	file=""
    else
	file="< $file"
    fi

    awk -v k=$key '$2 ~ k { print $1 }' $file | sed -e 's/[",:]//g'
}

uri_parse_name() {
    local uri="$1"

    basename $uri
}

uri_parse_path() {
    local uri="$1"

    dirname $uri
}

mtime() {
    local file="$1"

    command stat -f "%m" $file
}

now() {
    date "+%s"
}

to_file() {
    local contents="$1"

    local dir=$(transient_create "idk")

    echo $contents > $dir/file

    echo $dir/file
}

transient_create() {
    local dir_name="$1"

    local path=$(mktemp -d -t $dir_name)
    debug "transient $path"

    echo $path
}

transient_delete() {
    local file="$1"

    debug "clean $file"
    rm -rf $(dirname $file)
}

log_and_run() {
    local cmd="$1"

    if [ -n "${DRY_RUN}" ]; then
	log "$cmd" | perl -p -e "s, , \\\\\n\t,g"
    fi
    eval $cmd
}

cond_log_and_run() {
    local cmd="$*"

    if [ -n "${DRY_RUN}" ]; then
	log "$cmd" | perl -p -e "s, , \\\\\n\t,g"
    else
	eval $cmd
    fi
}

template_fill_in() {
    local infile="$1"
    local outfile="$2"
    local q_flag="$3"
    shift 3

    cp_file "$infile" "$outfile"
    local sed_re
    local save_ifs=$IFS
    IFS=^
    for sed_re in $(echo $@); do
	if [ x"$q_flag" = x"no_quotes" ]; then
	    debug "N: sed -i ''  -e $sed_re $outfile"
	    sed -i '' -e $sed_re $outfile
	else
	    debug "Q: sed -i ''  -e \"$sed_re\" $outfile"
	    sed -i '' -e "$sed_re" $outfile
	fi
    done
    IFS=$save_ifs
}

token_args_from_list() {
    local mark="$1"
    local sep="$2"
    local split="$3"
    shift 3

    local pair
    local args
    local save_ifs=$IFS
    IFS=$split
    for pair in $(echo $@); do
	local k=$(echo $pair | cut -f 1 -d '=')
	local v=$(echo $pair | cut -f 2- -d '=')

	args="${args}s${sep}${mark}${k}${mark}${sep}${v}${sep}g^"
    done
    IFS=$save_ifs

    echo $args | sed -e 's,\^$,,'
}
