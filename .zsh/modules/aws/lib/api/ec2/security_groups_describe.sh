aws_ec2_security_groups_describe() {
    shift 0

    log_and_run aws ec2 describe-security-groups "$@"
}