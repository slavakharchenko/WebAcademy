output "project_url" {
  description = "Gitlab project url"
  value = gitlab_project.webacademy_terraform_project.web_url
}

output "gitlab_deploy_token" {
  description = "Gitlab deploy token"
  value = nonsensitive(gitlab_deploy_token.deploy_token_webacademy.token)
}

output "gitlab_group_access_token" {
  description = "Gitlab project url"
  value = gitlab_group_access_token.group_access_token_webacademy.id
}
