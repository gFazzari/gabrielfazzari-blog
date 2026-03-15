resource "cloudflare_pages_project" "site" {
  account_id        = var.cloudflare_account_id
  name              = "gabrielfazzari-blog"
  production_branch = "main"

  build_config = {
    build_command   = "pnpm install && hugo --gc --minify && pnpm dlx pagefind --source \"public\""
    destination_dir = "public"
    root_dir        = ""
  }

  source = {
    type = "github"
    config = {
      owner                         = var.github_owner
      repo_name                     = var.github_repo
      production_branch             = var.github_branch
      pr_comments_enabled           = true
      deployments_enabled           = true
      production_deployment_enabled = true
    }
  }

  deployment_configs = {
    production = {
      environment_variables = {
        HUGO_VERSION = "0.150.0"
      }
      fail_open = true
    }
    preview = {
      fail_open = true
    }
  }
}

resource "cloudflare_pages_domain" "custom" {
  for_each     = toset(var.domains)
  account_id   = var.cloudflare_account_id
  project_name = cloudflare_pages_project.site.name
  name         = each.value
}
