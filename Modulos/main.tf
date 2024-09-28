resource "oci_core_instance" "this" {
  compartment_id       = var.compartment_id
  availability_domain  = var.availability_domain
  display_name         = var.instance_display_name
  shape                = var.instance_shape

  create_vnic_details {
    subnet_id       = var.subnet_id
    assign_public_ip = true
  }

  metadata = {
    ssh_authorized_keys = var.ssh_authorized_keys
  }

}
