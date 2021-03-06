aws_elasticbeanstalk_application_create() {
    local application_name="$1"
    shift 1

    cond_log_and_run aws elasticbeanstalk create-application --application-name $application_name "$@"
}
