variable "VM_name" {
    description = "Name of the VM Instance"
    type = string
    default = "my-sample-vm"
}

variable "VM_zone" {
    description = "VM instance zone"
    type = string
    default = "us-central1-a"
}

variable "VM_machine_type" {
    description = "VM Instance Machine type"
    type = string
    default = "e2-medium"
}
