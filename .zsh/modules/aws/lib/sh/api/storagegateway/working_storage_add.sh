aws_storagegateway_working_storage_add() {
    local gateway_arn="$1"
    local disk_ids="$2"
    shift 2

    cond_log_and_run aws storagegateway add-working-storage --gateway-arn $gateway_arn --disk-ids $disk_ids "$@"
}
