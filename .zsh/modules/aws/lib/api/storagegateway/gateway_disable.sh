aws_storagegateway_gateway_disable() {
    local gateway_arn="$1"
    shift 1

    cond_log_and_run aws storagegateway disable-gateway --gateway-arn $gateway_arn "$@"
}
