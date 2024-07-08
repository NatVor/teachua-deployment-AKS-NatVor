provider "github" {
  token = var.github_token
}

data "github_actions_secret" "ssh_public_key_secret" {
  repository = "teachua-deployment-AKS-NatVor"
  secret_name = "SSH_PUBLIC_KEY"
}

resource "azapi_resource" "ssh_public_key" {
  type     = "Microsoft.Compute/sshPublicKeys"
  name     = "sshgenuinerhino"
  location = "East US"

  body = jsonencode({
    properties = {
      publicKey = data.github_actions_secret.ssh_public_key_secret.value
    }
  })

  resource_group_name = azurerm_resource_group.rg.name
}
