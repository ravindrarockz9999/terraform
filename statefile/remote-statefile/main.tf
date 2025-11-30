provider "google" {
    project = "mythical-bazaar-470812-n3"
    region = "us-central1"
}

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "7.12.0"
    }
  }

  backend "gcs" {
    bucket = "palutla"  # This bucket must exist before running terraform init
    prefix = "terraform/ravi"
  }
}

resource "google_compute_instance" "VM" {
    name = "${var.name}"
    zone = "${var.zone}"
    machine_type = "${var.machine_type}"
     boot_disk {
       initialize_params {
         image = "debian-cloud/debian-11"
       }
     }
     network_interface {
       network = "default"
       access_config {
         
       }
     } 
}