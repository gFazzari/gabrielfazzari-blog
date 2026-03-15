variable "cloudflare_api_token" {
  sensitive = true
}

variable "cloudflare_account_id" {}

variable "domains" {
  type    = list(string)
  default = ["gabrielfazzari.it", "gabrielfazzari.com"]
}

variable "github_owner" {
  default = "gFazzari"
}

variable "github_repo" {
  default = "gabrielfazzari-blog"
}

variable "github_branch" {
  default = "main"
}
