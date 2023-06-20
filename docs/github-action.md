<!-- markdownlint-disable -->

## Inputs

| Name | Description | Default | Required |
|------|-------------|---------|----------|
| atmos-version | Atmos version to use for vendoring. Default 'latest' | latest | false |
| aws-region | AWS region for assuming identity. | us-east-1 | false |
| component | The name of the component to plan. | N/A | true |
| component-path | The path to the base component. Atmos defines this value as component\_path. | N/A | true |
| log-level | Log level for this action. Default 'INFO' | INFO | false |
| stack | The stack name for the given component. | N/A | true |
| terraform-plan-role | The AWS role to be used to plan Terraform. | N/A | true |
| terraform-state-bucket | The S3 Bucket where the planfiles are stored. | N/A | true |
| terraform-state-role | The AWS role to be used to retrieve the planfile from AWS. | N/A | true |
| terraform-state-table | The DynamoDB table where planfile metadata is stored. | N/A | true |


<!-- markdownlint-restore -->
