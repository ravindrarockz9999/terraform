provider "google" {
    project = "mythical-bazaar-470812-n3"
    region = "us-central1"
}

resource "google_storage_bucket" "my_bucket" {
  name          = "my-bucket-palutla"  # Must be globally unique
  location      = "US-CENTRAL1"
  storage_class = "STANDARD"

  uniform_bucket_level_access = true

  versioning {
    enabled = true
  }
}