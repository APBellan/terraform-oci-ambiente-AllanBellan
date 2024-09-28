resource "oci_core_vcn" "vcn" {
  compartment_id = var.compartment_id
  cidr_block     = var.vcn_cidr_block
  display_name   = "Shared_VCN"
}

resource "oci_core_subnet" "subnet" {
  compartment_id       = var.compartment_id
  vcn_id               = oci_core_vcn.vcn.id
  cidr_block           = "10.0.1.0/24"
  display_name         = "Shared_Subnet"
  availability_domain  = null  # Sub-rede regional
  prohibit_public_ip_on_vnic = false
}

