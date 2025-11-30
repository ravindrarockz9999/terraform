/* terraform{
    required_providers {
        google = {
            source = "hashicorp/google"
            version = "7.12.0"
        }
    }
}  */

module "uat-module" {
    source = "./modules"
network_name = "uat-vpc"
subnet_name = "uat-subnet"
subnet_region = "asia-south2"
subnet_ip_range = "10.20.0.0/26"
vm_name = "uat-vm"
vm_zone = "asia-south2-c"
vm_machine_type = "e2-small"
}


output "uat_vmexternal_ip" {
     description = "uat vm external IP"
     value = module.uat-module.external_ip
}

output "uat_vm_instance_id" {
    description = "uat vm Instance id"
    value = module.uat-module.instance_id
}