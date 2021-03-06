aws_appstream_fleet_disassociate() {
    local fleet_name="$1"
    local stack_name="$2"
    shift 2

    cond_log_and_run aws appstream disassociate-fleet --fleet-name $fleet_name --stack-name $stack_name "$@"
}
