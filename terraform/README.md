<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.2.9 |
| <a name="requirement_gitlab"></a> [gitlab](#requirement\_gitlab) | 3.18.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_gitlab"></a> [gitlab](#provider\_gitlab) | 3.18.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [gitlab_branch_protection.main](https://registry.terraform.io/providers/gitlabhq/gitlab/3.18.0/docs/resources/branch_protection) | resource |
| [gitlab_deploy_token.deploy_token_webacademy](https://registry.terraform.io/providers/gitlabhq/gitlab/3.18.0/docs/resources/deploy_token) | resource |
| [gitlab_group.webacademy_terraform_group](https://registry.terraform.io/providers/gitlabhq/gitlab/3.18.0/docs/resources/group) | resource |
| [gitlab_group_access_token.group_access_token_webacademy](https://registry.terraform.io/providers/gitlabhq/gitlab/3.18.0/docs/resources/group_access_token) | resource |
| [gitlab_project.webacademy_terraform_project](https://registry.terraform.io/providers/gitlabhq/gitlab/3.18.0/docs/resources/project) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_gitlab_token"></a> [gitlab\_token](#input\_gitlab\_token) | Add gitlab token | `string` | `"glpat-gfKeHHvcpJWr8NXzjkRL"` | no |
| <a name="input_gitlab_url"></a> [gitlab\_url](#input\_gitlab\_url) | Add gitlab url | `string` | `"http://gitlab.example.com/api/v4/"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_gitlab_deploy_token"></a> [gitlab\_deploy\_token](#output\_gitlab\_deploy\_token) | Gitlab deploy token |
| <a name="output_gitlab_group_access_token"></a> [gitlab\_group\_access\_token](#output\_gitlab\_group\_access\_token) | Gitlab project url |
| <a name="output_project_url"></a> [project\_url](#output\_project\_url) | Gitlab project url |
<!-- END_TF_DOCS -->