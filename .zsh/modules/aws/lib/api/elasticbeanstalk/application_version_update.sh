aws_elasticbeanstalk_application_version_update() {
    local application_name="$1"
    local version_label="$2"
    shift 2

    cond_log_and_run aws elasticbeanstalk update-application-version --application-name $application_name --version-label $version_label "$@"
}
