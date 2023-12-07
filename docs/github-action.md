<!-- markdownlint-disable -->

## Inputs

| Name | Description | Default | Required |
|------|-------------|---------|----------|
| atmos-config-path | The path to the atmos.yaml file | ./ | false |
| atmos-version | Atmos version to use for vendoring. Default 'latest' | latest | false |
| aws-region | AWS region for assuming identity. | us-east-1 | false |
| branding-logo-image | Branding logo image url | https://cloudposse.com/logo-300x69.svg | false |
| branding-logo-url | Branding logo url | https://cloudposse.com/ | false |
| component | The name of the component to plan. | N/A | true |
| component-path | The path to the base component. Atmos defines this value as component\_path. | N/A | true |
| debug | Enable action debug mode. Default: 'false' | false | false |
| drift-detection-mode-enabled | Indicate whether this action is used in drift detection workflow. | false | true |
| enable-infracost | Whether to enable infracost summary. Requires secret `infracost-api-key` to be specified. Default: 'false | false | false |
| infracost-api-key | Infracost API key | N/A | false |
| metadata-retention-days | Infracost API key | 1 | false |
| sha | SHA to use | ${{ github.event.pull\_request.head.sha }} | true |
| stack | The stack name for the given component. | N/A | true |
| terraform-plan-role | The AWS role to be used to plan Terraform. | N/A | true |
| terraform-state-bucket | The S3 Bucket where the planfiles are stored. | N/A | true |
| terraform-state-role | The AWS role to be used to retrieve the planfile from AWS. | N/A | true |
| terraform-state-table | The DynamoDB table where planfile metadata is stored. | N/A | true |
| terraform-version | The version of Terraform CLI to install. Instead of full version string you can also specify constraint string starting with "<" (for example `<1.13.0`) to install the latest version satisfying the constraint. A value of `latest` will install the latest version of Terraform CLI. Defaults to `latest`. | latest | false |
| token | Used to pull node distributions for Atmos from Cloud Posse's GitHub repository. Since there's a default, this is typically not supplied by the user. When running this action on github.com, the default value is sufficient. When running on GHES, you can pass a personal access token for github.com if you are experiencing rate limiting. | ${{ github.server\_url == 'https://github.com' && github.token \|\| '' }} | false |


## Outputs

| Name | Description |
|------|-------------|
| summary | Summary |
<!-- markdownlint-restore -->
