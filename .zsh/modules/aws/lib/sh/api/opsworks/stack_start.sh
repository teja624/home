aws_opsworks_stack_start() {
    local stack_id="$1"
    shift 1

    cond_log_and_run aws opsworks start-stack --stack-id $stack_id "$@"
}
