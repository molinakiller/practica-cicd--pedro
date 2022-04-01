 terraform {
   required_providers {
    google = {
      source  = "hashicorp/google"

    }
   }
    #   backend "remote" {
     cloud {
#        # The name of your Terraform Cloud organization.
         organization = "acme-pedro-molina"
#
#         # The name of the Terraform Cloud workspace to store Terraform state files in.
        workspaces {
           name = "acme-pedro-molina"
         }
       }
     }
provider "google" {
#  credentials = "application_default_credentials.json"
  project = "pedro-molina"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_storage_bucket" "acme-storage-development-keepcoding" {
  name          = "acme-storage-dev-pedro-molina-github-actions"
  location      = "EU"
  force_destroy = true
  uniform_bucket_level_access = true
}
#
#     # An example resource that does nothing.
#     resource "null_resource" "example" {
#       triggers = {
#         value = "A example resource that does nothing!"
#       }
#     }
