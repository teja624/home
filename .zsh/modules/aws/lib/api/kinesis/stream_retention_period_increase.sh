aws_kinesis_stream_retention_period_increase() {
    local stream_name="$1"
    local retention_period_hours="$2"
    shift 2

    cond_log_and_run aws kinesis increase-stream-retention-period --stream-name $stream_name --retention-period-hours $retention_period_hours "$@"
}
