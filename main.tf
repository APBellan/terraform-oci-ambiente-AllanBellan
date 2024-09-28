module "oci_instance" {
  source               = "./modules/instance"
  instance_count       = 1
  ad_number            = 1
  compartment_ocid     = "ocid1.compartment.oc1..aaaaaaaaavr7olbbtghjmk4smaeoq5e4z2ykxazm6d5pmciae7z6ko73efoq"
  instance_display_name = "minha-instancia-teste"
  source_ocid          = "ocid1.image.oc1.sa-saopaulo-1.aaaaaaaa7oouirhxngn7emu3bq6kwoau2c365zipzlre5oat4zvpizrqsxwa"
  subnet_ocids         = "ocid1.subnet.oc1.sa-saopaulo-1.aaaaaaaa4vwhwz7pirakqmuaxdnelkzoptoglf3i5rr5tdeytlf5fi6m43fa"
  public_ip            = "EPHEMERAL" # NONE, RESERVED or EPHEMERAL
  ssh_public_keys      = file("G:/Outros computadores/Meu laptop/Documents/Allan/DevOps/IAC/terraform-oci-ambiente-AllanBellan/.oci/InstanciaTeste/ssh-key-2023-01-18.key.pub")
  block_storage_sizes_in_gbs = [50]
  shape                = "VM.Standard2.1"
  instance_state       = "RUNNING" # RUNNING or STOPPED
  boot_volume_backup_policy  = "bronze" # disabled, gold, silver or bronze
}