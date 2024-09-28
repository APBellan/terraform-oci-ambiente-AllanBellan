# Definição do módulo de instância
module "oci_instance" {
  source               = "oracle-terraform-modules/compute-instance/oci"
  instance_count       = 1
  ad_number            = 1
  compartment_ocid     = var.compartment_ocid
  instance_display_name = "minha-instancia-teste"
  source_ocid          = var.source_ocid  # OCID da imagem a ser usada para a instância
  subnet_ocids         = var.subnet_ocids
  public_ip            = "EPHEMERAL"  # Ou use "RESERVED" se preferir um IP público reservado
  ssh_public_keys      = file("G:/Outros computadores/Meu laptop/Documents/Allan/DevOps/IAC/terraform-oci-ambiente-AllanBellan/.oci/InstanciaTeste/ssh-key-2023-01-18.key.pub")  # Caminho para a chave pública SSH
  block_storage_sizes_in_gbs = [50]  # Anexar 50 GB de volume de bloco
  shape                = "VM.Standard2.1"  # Tipo da instância
  instance_state       = "RUNNING"
}

resource "oci_core_volume" "block_volume" {
  availability_domain = var.ad_number
  compartment_id      = var.compartment_ocid
  size_in_gbs         = 50  # Tamanho do volume
  display_name        = "volume-de-teste"
}

resource "oci_core_volume_attachment" "volume_attachment" {
  instance_id = oci_core_instance.instance.id
  volume_id   = oci_core_volume.block_volume.id
  attachment_type  = "paravirtualized"
}
