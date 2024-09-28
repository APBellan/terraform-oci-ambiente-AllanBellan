terraform {
  required_version = ">= 1.3.0"  # Versão recente do Terraform
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = ">= 5.0.0"  # Última versão do provedor OCI
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

