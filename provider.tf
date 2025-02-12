# AWS Provider Configuration
provider "aws" {
  region = "us-west-2"  # Replace with your desired AWS region
  access_key = "your-access-key"  # Optional: AWS access key (use IAM roles for security)
  secret_access_key = "your-secret-key"  # Optional: AWS secret key
}
--------------------------------------------------------------------------------------------
# Azure Provider Configuration
provider "azurerm" {
  features {}
  client_id       = "your-client-id"          # Optional: Azure Client ID for service principal
  client_secret   = "your-client-secret"      # Optional: Azure Client Secret for service principal
  tenant_id       = "your-tenant-id"          # Optional: Azure Tenant ID
  subscription_id = "your-subscription-id"    # Optional: Azure Subscription ID
}
