terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.7.0"
    }
  }
}

provider "google" {
  credentials = "application_default_credentials.json"
  project = "pedro-molina"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_storage_bucket" "acme-storage-development-keepcoding" {
  name          = "acme-storage-dev-12434235"
  location      = "EU"
  force_destroy = true
  uniform_bucket_level_access = true
}
