aws_ec2_customer_gateway_create() {
    local type="$1"
    local public_ip="$2"
    local bgp_asn="$3"
    shift 3

    cond_log_and_run aws ec2 create-customer-gateway --type $type --public-ip $public_ip --bgp-asn $bgp_asn "$@"
}
