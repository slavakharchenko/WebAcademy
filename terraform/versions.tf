terraform {
  required_version = ">=1.2.9"
  required_providers {
    gitlab = {
      source = "gitlabhq/gitlab"
      version = "3.18.0"
    }
  }
}
