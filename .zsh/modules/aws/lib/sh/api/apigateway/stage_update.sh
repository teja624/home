aws_apigateway_stage_update() {
    local rest_api_id="$1"
    local stage_name="$2"
    shift 2

    cond_log_and_run aws apigateway update-stage --rest-api-id $rest_api_id --stage-name $stage_name "$@"
}
