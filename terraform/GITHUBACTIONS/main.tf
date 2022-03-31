terraform {
  backend "remote" {
#         # The name of your Terraform Cloud organization.
    organization = "pedro-molina"
#
#         # The name of the Terraform Cloud workspace to store Terraform state files in.
    workspaces {
      name = "pedro-molina"
    }
       #}
   }
#
#     # An example resource that does nothing.
#     resource "null_resource" "example" {
#       triggers = {
#         value = "A example resource that does nothing!"
#       }
#     }

  required_providers {
    google = {
      source  = "hashicorp/google"

    }
  }
}

resource "google_storage_bucket" "acme-storage-development-keepcoding" {
  name          = "acme-storage-dev-pedro-molina"
  location      = "EU"
  force_destroy = true
  uniform_bucket_level_access = true
}
