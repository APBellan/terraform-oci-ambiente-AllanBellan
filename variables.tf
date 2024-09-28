variable "compartment_ocid" {
  type        = string
  description = "OCID do compartimento onde a instância será criada"
}

variable "subnet_ocids" {
  type        = list(string)
  description = "Lista de OCIDs das subnets para as instâncias"
}

variable "source_ocid" {
  type        = string
  description = "OCID da imagem para criar a instância - Oracle Linux 8"
  default     = "ocid1.image.oc1.sa-saopaulo-1.aaaaaaaa7oouirhxngn7emu3bq6kwoau2c365zipzlre5oat4zvpizrqsxwa"
}

variable "volume_size_in_gbs" {
  type        = number
  description = "Tamanho do volume de bloco em GB"
  default     = 50
}

variable "ad_number" {
  type        = number
  description = "Número do Availability Domain (AD) para provisionamento de recursos"
  default     = 1  # Defina o AD padrão ou deixe o usuário fornecer
}
