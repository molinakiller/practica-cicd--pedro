terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"

    }
  }
}

provider "google" {
  credentials = "GCLOUD_CREDENTIALS"
  project = "pedro-molina"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_storage_bucket" "acme-storage-development-keepcoding" {
  name          = "acme-storage-dev-pedro-molina"
  location      = "EU"
  force_destroy = true
  uniform_bucket_level_access = true
}
