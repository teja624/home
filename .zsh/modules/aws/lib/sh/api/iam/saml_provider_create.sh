aws_iam_saml_provider_create() {
    local saml_metadata_document="$1"
    local name="$2"
    shift 2

    cond_log_and_run aws iam create-saml-provider --saml-metadata-document $saml_metadata_document --name $name "$@"
}
