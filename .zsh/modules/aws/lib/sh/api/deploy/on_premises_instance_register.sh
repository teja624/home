aws_deploy_on_premises_instance_register() {
    local instance_name="$1"
    shift 1

    cond_log_and_run aws deploy register-on-premises-instance --instance-name $instance_name "$@"
}
