terraform{
    required_providers {
        google = {
            source = "hashicorp/google"
            version = "7.12.0"
        }
    }
}

module "prod-module" {
    source = "./modules"
network_name = "prod-vpc"
subnet_name = "prod-subnet"
subnet_region = "asia-south1"
subnet_ip_range = "10.10.0.0/24"
vm_name = "prod-vm"
vm_zone = "asia-south1-a"
vm_machine_type = "e2-medium"
}


output "prod_vmexternal_ip" {
     description = "prod vm external IP"
     value = module.prod-module.external_ip
}

output "prod_vm_instance_id" {
    description = "prod vm Instance id"
    value = module.prod-module.instance_id
}