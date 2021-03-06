aws_rds_db_cluster_modify() {
    local db_cluster_identifier="$1"
    shift 1

    cond_log_and_run aws rds modify-db-cluster --db-cluster-identifier $db_cluster_identifier "$@"
}
