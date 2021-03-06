aws_ec2_image_attribute_reset() {
    local image_id="$1"
    local attribute="$2"
    shift 2

    cond_log_and_run aws ec2 reset-image-attribute --image-id $image_id --attribute $attribute "$@"
}
