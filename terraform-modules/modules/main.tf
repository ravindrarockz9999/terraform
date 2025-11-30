provider "google" {
    project = "mythical-bazaar-470812-n3"
    region = "asia-south1"
}


resource "google_compute_network" "vpc" {
    name = "${var.network_name}"
    auto_create_subnetworks = false
     mtu = 1460
}

resource "google_compute_subnetwork" "subnet" {
    name = "${var.subnet_name}"
    region = "${var.subnet_region}"
    network = google_compute_network.vpc.self_link
    ip_cidr_range = "${var.subnet_ip_range}"
}

resource "google_compute_instance" "vm" {
    name = "${var.vm_name}"
    zone = "${var.vm_zone}"
    machine_type = "${var.vm_machine_type}"
    boot_disk {
      initialize_params {
          image = "debian-cloud/debian-11"
      }
    }
    network_interface {
      network = google_compute_network.vpc.self_link
      subnetwork = google_compute_subnetwork.subnet.self_link
      access_config {   
      }
    }
}