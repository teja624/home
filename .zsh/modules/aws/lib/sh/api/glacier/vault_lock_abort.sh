aws_glacier_vault_lock_abort() {
    local account_id="$1"
    local vault_name="$2"
    shift 2

    cond_log_and_run aws glacier abort-vault-lock --account-id $account_id --vault-name $vault_name "$@"
}
