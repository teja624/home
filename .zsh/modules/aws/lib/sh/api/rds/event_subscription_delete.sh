aws_rds_event_subscription_delete() {
    local subscription_name="$1"
    shift 1

    cond_log_and_run aws rds delete-event-subscription --subscription-name $subscription_name "$@"
}
