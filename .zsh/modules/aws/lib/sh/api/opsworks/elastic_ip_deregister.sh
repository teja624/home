aws_opsworks_elastic_ip_deregister() {
    local elastic_ip="$1"
    shift 1

    cond_log_and_run aws opsworks deregister-elastic-ip --elastic-ip $elastic_ip "$@"
}
