aws_cognito_idp_groups_list() {
    local user_pool_id="$1"
    shift 1

    log_and_run aws cognito-idp list-groups --user-pool-id $user_pool_id "$@"
}
