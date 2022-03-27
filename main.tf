provider "google" {
  credentials = "application_default_credentials.json"
  project = "pedro-molina"
  region  = "us-central1"
  zone    = "us-central1-c"
}
resource "google_storage_bucket" "dev" {
  name          = "acme-storage-dev"
  location      = "EU"
  force_destroy = true
  uniform_bucket_level_access = true
}
