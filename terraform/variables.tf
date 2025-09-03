variable "project_id" {
  description = "ID do projeto GCP"
  type        = string
  default     = "vm-projeto-tf"
}

variable "region" {
  description = "Região da GCP"
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "Zona da GCP"
  type        = string
  default     = "us-central1-a"
}

variable "instance_name" {
  description = "Nome da VM"
  type        = string
  default     = "vm-tf-gcp"
}
