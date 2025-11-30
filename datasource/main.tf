provider "google" {
    project = "mythical-bazaar-470812-n3"
    region = "us-central1"
}

data "google_compute_network" "vpc" {
    name = "custom-vpc"
}

data "google_compute_subnetwork" "subnet" {
  name   = "custom-subnet"
  region = "us-central1"
}

resource "google_compute_instance" "vm" {
    name = "custom-vm"
    machine_type = "e2-micro"
    zone = "us-central1-a"
     boot_disk {
       initialize_params {
         image = "debian-cloud/debian-11"
       }
     }
     network_interface {
       network = data.google_compute_network.vpc.name
       subnetwork = data.google_compute_subnetwork.subnet.name
       access_config {
         
       }
     }
}

output "external_ip" {
    description = "vm external IP"
    value = google_compute_instance.vm.network_interface[0].access_config[0].nat_ip
}