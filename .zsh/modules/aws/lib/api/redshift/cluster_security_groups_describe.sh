aws_redshift_cluster_security_groups_describe() {
    shift 0

    log_and_run aws redshift describe-cluster-security-groups "$@"
}
