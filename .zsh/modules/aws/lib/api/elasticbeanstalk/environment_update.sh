aws_elasticbeanstalk_environment_update() {
    shift 0

    cond_log_and_run aws elasticbeanstalk update-environment "$@"
}