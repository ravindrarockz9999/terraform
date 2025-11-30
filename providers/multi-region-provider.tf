provider "google" {
    project = "my-gcp-project"
    region = "us-central1"
}

provider "google" {
    alias = "demo"
    project = "my-gcp-project"
    region = "asia-south1"
}

resource "google_storage_bucket" "my-bucket" {
    name = "my-bucket-palutla"
    location = "US"  # US multi-region
    storage_class = "STANDARD"
    uniform_bucket_level_access = true
}

resource "google_storage_bucket" "my-bucket-demo" {
    provider = google.demo
    name = "my-bucket-demo-palutla"
    location = "ASIA"  # ASIA multi-region
    storage_class = "STANDARD"
    uniform_bucket_level_access = true

}
