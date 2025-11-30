terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "7.12.0"
    }
  }
}

provider "google" {
    project = "mythical-bazaar-470812-n3"
    region = "us-central1"
}

resource "google_compute_network" "vpc_network" {  
  name                    = "my-vpc-network"
  auto_create_subnetworks = false
  mtu                     = 1460
}

resource "google_compute_subnetwork" "VPC_subnet" {
    name = "my-vpc-subnet"
    network = google_compute_network.vpc_network.name
    region = "asia-south1"
    ip_cidr_range = "10.10.0.0/24"
}