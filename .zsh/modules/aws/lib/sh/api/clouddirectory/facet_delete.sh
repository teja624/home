aws_clouddirectory_facet_delete() {
    local schema_arn="$1"
    local name="$2"
    shift 2

    cond_log_and_run aws clouddirectory delete-facet --schema-arn $schema_arn --name $name "$@"
}
