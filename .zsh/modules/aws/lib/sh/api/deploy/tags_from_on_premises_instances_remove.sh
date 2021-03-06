aws_deploy_tags_from_on_premises_instances_remove() {
    local tags="$1"
    local instance_names="$2"
    shift 2

    cond_log_and_run aws deploy remove-tags-from-on-premises-instances --tags $tags --instance-names $instance_names "$@"
}
