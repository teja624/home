aws_waf_size_constraint_sets_list() {
    shift 0

    log_and_run aws waf list-size-constraint-sets "$@"
}