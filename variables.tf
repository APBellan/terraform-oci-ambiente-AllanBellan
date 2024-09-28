variable "compartment_ocid" {
  description = "OCID do compartimento"
  type        = string
}

variable "subnet_ocids" {
  description = "Lista de OCIDs das subnets"
  type        = list(string)
}

variable "instance_shape" {
  description = "Formato da instância"
  type        = string
}

variable "ad_number" {
  description = "Número do Availability Domain"
  type        = string
}

variable "public_ip" {
  description = "Tipo de IP público (RESERVED ou EPHEMERAL)"
  type        = string
}

variable "ssh_public_keys" {
  description = "Chave SSH pública para acesso à instância"
  type        = string
}
