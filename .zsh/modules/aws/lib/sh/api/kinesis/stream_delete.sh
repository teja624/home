aws_kinesis_stream_delete() {
    local stream_name="$1"
    shift 1

    cond_log_and_run aws kinesis delete-stream --stream-name $stream_name "$@"
}
