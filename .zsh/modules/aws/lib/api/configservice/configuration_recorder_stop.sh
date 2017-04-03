aws_configservice_configuration_recorder_stop() {
    local configuration_recorder_name="$1"
    shift 1

    cond_log_and_run aws configservice stop-configuration-recorder --configuration-recorder-name $configuration_recorder_name "$@"
}
