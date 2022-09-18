# Configure the GitLab Provider
#provider "gitlab" {
#  token = var.gitlab_token
#  base_url = var.gitlab_url
#}

#terraform {
#  backend "s3" {
#    bucket = "wa-terraform-state-07-09"
#    key    = "state/wa/group-1.state"
#    region = "eu-central-1"
#    profile = "wa-courses"
#  }
#}

# Add a group
resource "gitlab_group" "webacademy_terraform_group" {
  name        = "academy-3-lesson"
  path        = "academy-3-lesson"
  description = "Group created from terraform for 3 lesson"
}

# Add a project owned by the user
resource "gitlab_project" "webacademy_terraform_project" {
  name         = "academy-3-lesson-project"
  path = "academy-3-lesson-project"
  description  = "Project created from terraform for 3 lesson"
  namespace_id = gitlab_group.webacademy_terraform_group.id
  approvals_before_merge = 2

#  Error: Project push rules are not supported in your version of GitLab
#  push_rules {
#    reject_unsigned_commits = true
#    prevent_secrets        = true
#  }
}

# Add a deploy token
resource "gitlab_deploy_token" "deploy_token_webacademy" {
  project    = gitlab_project.webacademy_terraform_project.id
  name       = "Deploy token 2022"
  username   = "Gitlab-deploy"
  expires_at = "2023-01-01T00:00:00.000Z"

  scopes = ["read_repository", "read_registry"]
}

# Add a group access token
resource "gitlab_group_access_token" "group_access_token_webacademy" {
  group        = gitlab_group.webacademy_terraform_group.id
  name         = "Group access token"
  expires_at   = "2023-01-01"
  access_level = "developer"

  scopes = ["api"]
}

# Example using dynamic block
resource "gitlab_branch_protection" "main" {
  project                = gitlab_project.webacademy_terraform_project.id
  branch                 = "main"
  push_access_level      = "developer"
  merge_access_level     = "developer"
  unprotect_access_level = "developer"
  allow_force_push             = false
# Error: feature unavailable: code owner approvals
#  code_owner_approval_required = true
}
