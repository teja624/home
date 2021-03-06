aws_iot_policy_delete() {
    local policy_name="$1"
    shift 1

    cond_log_and_run aws iot delete-policy --policy-name $policy_name "$@"
}
