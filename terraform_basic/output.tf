output "VM_External_ip" {
    description = "VM Instance External Ip"
    value = google_compute_instance.VM.network_interface[0].access_config[0].nat_ip
}

output "VM_Id" {
    description = "VM Instance Id"
    value = google_compute_instance.VM.instance_id
}