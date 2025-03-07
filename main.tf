
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=2.0"
    }
  }

  required_version = ">= 1.2.4"
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "East US"

# Add pre-commit hooks for Terraform checks
echo "terraform fmt -check -recursive" > .husky/pre-commit
echo "terraform validate" >> .husky/pre-commit
echo "tflint" >> .husky/pre-commit
chmod +x .husky/pre-commit