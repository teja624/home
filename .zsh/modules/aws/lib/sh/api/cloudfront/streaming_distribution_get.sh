aws_cloudfront_streaming_distribution_get() {
    local id="$1"
    shift 1

    log_and_run aws cloudfront get-streaming-distribution --id $id "$@"
}
