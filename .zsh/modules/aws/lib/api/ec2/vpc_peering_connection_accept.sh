aws_ec2_vpc_peering_connection_accept() {
    shift 0

    cond_log_and_run aws ec2 accept-vpc-peering-connection "$@"
}
