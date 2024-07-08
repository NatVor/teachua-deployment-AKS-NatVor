resource "azapi_resource" "ssh_public_key" {
  type      = "Microsoft.Compute/sshPublicKeys"
  name      = "sshgenuinerhino"
  location  = "East US"
  resource_group_name = azurerm_resource_group.rg.name

  body = jsonencode({
    properties = {
      publicKey = "ssh-rsa ..."
    }
  })

  response_export_values = ["id", "name"]
}
