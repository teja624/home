aws_cloudtrail_trail_delete() {
    local name="$1"
    shift 1

    cond_log_and_run aws cloudtrail delete-trail --name $name "$@"
}
