aws_ec2_security_group_ingress_authorize() {

    cond_log_and_run aws ec2 authorize-security-group-ingress "$@"
}
