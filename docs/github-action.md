<!-- markdownlint-disable -->

## Inputs

| Name | Description | Default | Required |
|------|-------------|---------|----------|
| atmos-config-path | The path to the atmos.yaml file | N/A | true |
| atmos-version | The version of atmos to install | >= 1.99.0 | false |
| branding-logo-image | Branding logo image url | https://cloudposse.com/logo-300x69.svg | false |
| branding-logo-url | Branding logo url | https://cloudposse.com/ | false |
| component | The name of the component to plan. | N/A | true |
| debug | Enable action debug mode. Default: 'false' | false | false |
| drift-detection-mode-enabled | Indicate whether this action is used in drift detection workflow. | false | true |
| infracost-api-key | Infracost API key | N/A | false |
| metadata-retention-days | Infracost API key | 1 | false |
| pr-comment | Set to 'true' to create a PR comment with the summary of the plan | false | false |
| sha | Commit SHA to plan. Default: github.sha | ${{ github.event.pull\_request.head.sha }} | true |
| skip-checkout | Disable actions/checkout. Useful for when the checkout happens in a previous step and file are modified outside of git through other actions | false | false |
| stack | The stack name for the given component. | N/A | true |
| token | Used to pull node distributions for Atmos from Cloud Posse's GitHub repository. Since there's a default, this is typically not supplied by the user. When running this action on github.com, the default value is sufficient. When running on GHES, you can pass a personal access token for github.com if you are experiencing rate limiting. | ${{ github.server\_url == 'https://github.com' && github.token \|\| '' }} | false |


## Outputs

| Name | Description |
|------|-------------|
| plan\_file | Path to the terraform plan file |
| plan\_json | Path to the terraform plan in JSON format |
| summary | Summary |
<!-- markdownlint-restore -->
