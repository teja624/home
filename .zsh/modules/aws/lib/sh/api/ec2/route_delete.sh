aws_ec2_route_delete() {
    local route_table_id="$1"
    shift 1

    cond_log_and_run aws ec2 delete-route --route-table-id $route_table_id "$@"
}
