aws_cognito_idp_group_create() {
    local group_name="$1"
    local user_pool_id="$2"
    shift 2

    cond_log_and_run aws cognito-idp create-group --group-name $group_name --user-pool-id $user_pool_id "$@"
}
