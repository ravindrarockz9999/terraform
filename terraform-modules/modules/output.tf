output "external_ip" {
  description = "The external IP address of the VM"
  value       = google_compute_instance.vm.network_interface[0].access_config[0].nat_ip
}

output "instance_id" {
  description = "The instance ID of the VM"
  value       = google_compute_instance.vm.instance_id
}