aws_iot_policy_version_create() {
    local policy_name="$1"
    local policy_document="$2"
    shift 2

    cond_log_and_run aws iot create-policy-version --policy-name $policy_name --policy-document $policy_document "$@"
}
