variable "token" {
  type        = string
  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
}

variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "env_name" {
  type        = string
  default     = "develop"
  description = "VPC network&subnet name"
}

variable "vm_name" {
  type        = string
  default     = "k8s"
  description = "example vm_ prefix"
}

variable "image_family" {
  type    = string
  default = "ubuntu-2004-lts"
}

variable "vm_resources" {
  type = map(number)
  default  = { cores = "2", memory = "4", core_fraction = "5" }
}

variable "username" {
  default = "ubuntu"
}
