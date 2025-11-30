provider "google" {
    project = "mythical-bazaar-470812-n3"
    region = "us-central1"
}


resource "google_compute_instance" "VM" {
    name = "${var.VM_name}"
    zone = "${var.VM_zone}"
    machine_type = "${var.VM_machine_type}"
      boot_disk {
        initialize_params{
            image = "debian-cloud/debian-11"
        }
     }  
     network_interface {
       network = "default"
       access_config {
         
       }
     }
}