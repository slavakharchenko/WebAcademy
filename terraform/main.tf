# Configure the GitLab Provider
provider "gitlab" {
  token = var.gitlab_token
  base_url = var.gitlab_url
}

# Add a group
resource "gitlab_group" "webAcademy-terraform-group" {
  name        = "academy-3-lesson"
  path        = "academy-3-lesson"
  description = "Group created from terraform for 3 lesson"
}

# Add a project owned by the user
resource "gitlab_project" "webAcademy-terraform-project" {
  name         = "academy-3-lesson-project"
  path = "academy-3-lesson-project"
  description  = "Project created from terraform for 3 lesson"
  namespace_id = gitlab_group.webAcademy-terraform-group.id
}

