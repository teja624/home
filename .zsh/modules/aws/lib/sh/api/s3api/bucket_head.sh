aws_s3api_bucket_head() {
    local bucket="$1"
    shift 1

    cond_log_and_run aws s3api head-bucket --bucket $bucket "$@"
}
