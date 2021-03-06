aws_cognito-idp_reset_user_password_admin() {
    local user_pool_id="$1"
    local username="$2"
    shift 2

    cond_log_and_run aws cognito-idp admin-reset-user-password --user-pool-id $user_pool_id --username $username "$@"
}
