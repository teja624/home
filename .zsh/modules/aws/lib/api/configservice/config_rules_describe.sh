aws_configservice_config_rules_describe() {
    shift 0

    log_and_run aws configservice describe-config-rules "$@"
}
