aws_s3api_objects_list() {
    local bucket="$1"
    shift 1

    log_and_run aws s3api list-objects --bucket $bucket "$@"
}
