variable "network_name" {
    description = "name of the vpc"
    type = string
}

variable "subnet_name" {
    description = "name of the subnet"
    type = string
}

variable "subnet_region" {
    description = "name of the subnet region"
    type = string
}

variable "subnet_ip_range" {
    description = "subnet Ip range"
    type = string
}

variable "vm_name" {
    description = "name of the vm"
    type = string
}

variable "vm_zone" {
    description = "zone of the vm Instance"
    type = string
}

variable "vm_machine_type" {
    description = "vm instance machine type"
    type = string
}