aws_ec2_subnets_describe() {
    shift 0

    log_and_run aws ec2 describe-subnets "$@"
}