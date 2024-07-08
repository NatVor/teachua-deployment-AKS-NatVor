terraform {
  backend "remote" {
    organization = "TeachUA"

    workspaces {
      name = "teachua-deployment-AKS-NatVor"
    }
    
    hostname     = "app.terraform.io"
    token        = "eWp3zAAFw6UwBQ.atlasv1.xgzQy8eYkYqyUrGzU9gjRMZHR5h5VAbqCc2Ge44nKSJxXJ7FxcdukDDeKvh7lB7nt58"
  }
}
