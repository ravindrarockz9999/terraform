provider "google" {
    project = "mythical-bazaar-470812-n3"
    region = "us-central1"
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