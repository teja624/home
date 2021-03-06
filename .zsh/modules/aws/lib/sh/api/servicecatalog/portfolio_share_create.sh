aws_servicecatalog_portfolio_share_create() {
    local portfolio_id="$1"
    local account_id="$2"
    shift 2

    cond_log_and_run aws servicecatalog create-portfolio-share --portfolio-id $portfolio_id --account-id $account_id "$@"
}
