aws_storagegateway_volume_initiators_list() {
    local volume_arn="$1"
    shift 1

    log_and_run aws storagegateway list-volume-initiators --volume-arn $volume_arn "$@"
}
