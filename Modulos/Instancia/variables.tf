variable "compartment_id" {
  description = "OCID do compartimento"
  type        = string
}

variable "availability_domain" {
  description = "Domínio de disponibilidade"
  type        = string
}

variable "subnet_id" {
  description = "OCID da sub-rede"
  type        = string
}

variable "instance_shape" {
  description = "Shape da instância"
  type        = string
}

variable "ssh_authorized_keys" {
  description = "Chaves SSH autorizadas"
  type        = string
}

variable "instance_display_name" {
  description = "Nome da instância"
  type        = string
}
