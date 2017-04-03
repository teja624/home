aws_apigateway_rest_api_put() {
    local rest_api_id="$1"
    local body="$2"
    shift 2

    cond_log_and_run aws apigateway put-rest-api --rest-api-id $rest_api_id --body $body "$@"
}
