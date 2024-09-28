module "instance" {
  source               = "./Modulos/Instancia"
  compartment_ocid      = var.compartment_ocid
  subnet_ocids          = var.subnet_ocids
  instance_shape        = var.instance_shape
  availability_domain   = var.ad_number
  public_ip             = var.public_ip
  ssh_public_keys       = var.ssh_public_keys
}
