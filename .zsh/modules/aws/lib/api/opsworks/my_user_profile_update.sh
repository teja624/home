aws_opsworks_my_user_profile_update() {

    cond_log_and_run aws opsworks update-my-user-profile "$@"
}
