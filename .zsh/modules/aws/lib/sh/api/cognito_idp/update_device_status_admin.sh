aws_cognito_idp_update_device_status_admin() {
    local user_pool_id="$1"
    local username="$2"
    local device_key="$3"
    shift 3

    cond_log_and_run aws cognito-idp admin-update-device-status --user-pool-id $user_pool_id --username $username --device-key $device_key "$@"
}
