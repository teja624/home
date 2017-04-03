aws_sdb_domain_delete() {
    local domain_name="$1"
    shift 1

    cond_log_and_run aws sdb delete-domain --domain-name $domain_name "$@"
}
