remote_state {
  backend = "s3"
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
  config = {
    bucket = "wa-terraform-state-07-09"
    key    = "state/wa/group-1.state"
    region = "eu-central-1"
    profile = "wa-courses"
  }
}

generate "provider" {
  path = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
  provider "gitlab" {
    token = var.gitlab_token
    base_url = var.gitlab_url
  }
EOF
}