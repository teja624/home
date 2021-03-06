aws_ec2_instance_attribute_reset() {
    local instance_id="$1"
    local attribute="$2"
    shift 2

    cond_log_and_run aws ec2 reset-instance-attribute --instance-id $instance_id --attribute $attribute "$@"
}
