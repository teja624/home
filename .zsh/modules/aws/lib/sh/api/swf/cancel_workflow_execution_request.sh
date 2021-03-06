aws_swf_cancel_workflow_execution_request() {
    local domain="$1"
    local workflow_id="$2"
    shift 2

    cond_log_and_run aws swf request-cancel-workflow-execution --domain $domain --workflow-id $workflow_id "$@"
}
