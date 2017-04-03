aws_rds_db_cluster_parameter_group_reset() {
    local db_cluster_parameter_group_name="$1"
    shift 1

    cond_log_and_run aws rds reset-db-cluster-parameter-group --db-cluster-parameter-group-name $db_cluster_parameter_group_name "$@"
}
