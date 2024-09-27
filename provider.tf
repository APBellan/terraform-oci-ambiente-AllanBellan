terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      # version = "5.11.0" # Altere para a versão desejada ou remova para usar a mais recente
    }
  }
}

provider "oci" {
    tenancy_ocid     = var.tenancy_ocid
    user_ocid        = var.user_ocid
    fingerprint      = var.fingerprint
    private_key_path = var.private_key_path
    region           = "sa-saopaulo-1"
}

