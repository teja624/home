aws_emr_instance_groups_add() {
    local cluster_id="$1"
    local instance_groups="$2"
    shift 2

    cond_log_and_run aws emr add-instance-groups --cluster-id $cluster_id --instance-groups $instance_groups "$@"
}
