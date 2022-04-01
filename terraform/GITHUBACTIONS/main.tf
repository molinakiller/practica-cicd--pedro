terraform {
  backend "remote" {
     cloud {
      organization = "acme-pedro-molina"

      workspaces {
        name = "acme-pedro-molina"
      }
    }
  }
}
resource "google_storage_bucket" "acme-storage-development-keepcoding" {
  name          = "acme-storage-dev-pedro-molina"
  location      = "EU"
  force_destroy = true
  uniform_bucket_level_access = true
}
}
