aws_organizations_organization_delete() {
    shift 0

    cond_log_and_run aws organizations delete-organization "$@"
}