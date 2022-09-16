# Providers vars
variable "gitlab_url" {
  description = "Add gitlab url"
  type = string
  default = "http://gitlab.example.com/api/v4/"
}

variable "gitlab_token" {
  description = "Add gitlab token"
  type = string
  default = "glpat-gfKeHHvcpJWr8NXzjkRL"
}