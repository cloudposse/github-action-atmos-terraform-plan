<!-- markdownlint-disable -->

## Inputs

| Name | Description | Default | Required |
|------|-------------|---------|----------|
| atmos-config-path | The path to the atmos.yaml file | N/A | true |
| atmos-pro-base-url | The base URL for Atmos Pro | https://app.cloudposse.com | false |
| atmos-pro-token | Your API key for Atmos Pro | N/A | false |
| atmos-version | The version of atmos to install | >= 1.63.0 | false |
| branding-logo-image | Branding logo image url | https://cloudposse.com/logo-300x69.svg | false |
| branding-logo-url | Branding logo url | https://cloudposse.com/ | false |
| component | The name of the component to plan. | N/A | true |
| debug | Enable action debug mode. Default: 'false' | false | false |
| drift-detection-mode-enabled | Indicate whether this action is used in drift detection workflow. | false | true |
| infracost-api-key | Infracost API key | N/A | false |
| lock-stack | Flag to indicate if Atmos Pro stack locking should be used | false | true |
| metadata-retention-days | Infracost API key | 1 | false |
| sha | Commit SHA to plan. Default: github.sha | ${{ github.event.pull\_request.head.sha }} | true |
| stack | The stack name for the given component. | N/A | true |
| token | Used to pull node distributions for Atmos from Cloud Posse's GitHub repository. Since there's a default, this is typically not supplied by the user. When running this action on github.com, the default value is sufficient. When running on GHES, you can pass a personal access token for github.com if you are experiencing rate limiting. | ${{ github.server\_url == 'https://github.com' && github.token \|\| '' }} | false |


## Outputs

| Name | Description |
|------|-------------|
| summary | Summary |
<!-- markdownlint-restore -->
