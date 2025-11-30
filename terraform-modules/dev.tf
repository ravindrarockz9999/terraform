/* terraform{
    required_providers {
        google = {
            source = "hashicorp/google"
            version = "7.12.0"
        }
    }
} */

module "dev-module" {
    source = "./modules"
network_name = "dev-vpc"
subnet_name = "dev-subnet"
subnet_region = "asia-southeast1"
subnet_ip_range = "10.30.0.0/28"
vm_name = "dev-vm"
vm_zone = "asia-southeast1-b"
vm_machine_type = "e2-micro"
}

output "dev_vmexternal_ip" {
     description = "dev vm external IP"
     value = module.dev-module.external_ip
}

output "dev_vm_instance_id" {
    description = "dev vm Instance id"
    value = module.dev-module.instance_id
}






