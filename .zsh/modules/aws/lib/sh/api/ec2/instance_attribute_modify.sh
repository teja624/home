aws_ec2_instance_attribute_modify() {
    local instance_id="$1"
    shift 1

    cond_log_and_run aws ec2 modify-instance-attribute --instance-id $instance_id "$@"
}
