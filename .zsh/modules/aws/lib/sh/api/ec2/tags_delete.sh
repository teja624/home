aws_ec2_tags_delete() {
    local resources="$1"
    shift 1

    cond_log_and_run aws ec2 delete-tags --resources $resources "$@"
}
