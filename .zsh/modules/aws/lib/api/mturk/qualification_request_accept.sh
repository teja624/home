aws_mturk_qualification_request_accept() {
    local qualification_request_id="$1"
    shift 1

    cond_log_and_run aws mturk accept-qualification-request --qualification-request-id $qualification_request_id "$@"
}
