module "shared_resources" {
  source = "../../shared_resources"

  compartment_id = var.compartment_id
  vcn_cidr_block = "10.0.0.0/16"
}

module "web_server_instance" {
  source = "../../modules/compute_instance"

  compartment_id        = var.compartment_id
  availability_domain   = var.availability_domain
  subnet_id             = module.shared_resources.subnet_id
  instance_shape        = var.instance_shape
  ssh_authorized_keys   = var.ssh_authorized_keys
  instance_display_name = var.instance_display_name
}
