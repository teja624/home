aws_apigateway_rest_api_import() {
    local body="$1"
    shift 1

    cond_log_and_run aws apigateway import-rest-api --body $body "$@"
}
