###cloud vars
variable "token" {
  type        = string
  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
}

variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
  default = "b1g9422l5eafjv34bjtu"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
  default = "b1gosv5aehv25rrbjfq4"
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

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network & subnet name"
}

variable "metadata" {
  type = map(string)
  default = {
  serial-port-enable = 1
  ssh-keys           = "ubuntu:ssh-ed25519 "
  }
}

variable "vms_resources_web"  {
  type = map(number)
  default = {
    cores = 2
    memory = 2
    core_fraction = 20
  }
}

variable "vm_web_platform_id" {
  type        = string
  default     = "standard-v3"
  description = ""
}

variable "vm_web_image" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = ""
}

variable "vm_web_name" {
  type        = string
  default     = "netology-develop-platform-web"
  description = ""
}


#variable "vm_web_memory" {
#  type        = number
#  default     = "2"
#  description = ""
#}

#variable "vm_web_cores" {
#  type        = number
#  default     = "2"
#  description = ""
#}

#variable "vm_web_core_fraction" {
#  type        = number
#  default     = "20"
#  description = ""
#}

variable "vm_web_preemptible" {
  type        = bool
  default     = "true"
  description = ""
}

variable "vm_web_nat" {
  type        = bool
  default     = "true"
  description = ""
}


variable "env" {
  type        = string
  default     = "develop"
  description = ""
}

variable "project" {
  type        = string
  default     = "platform"
  description = ""
}

variable "db" {
  type        = string
  default     = "db"
  description = ""
}

variable "web" {
  type        = string
  default     = "web"
  description = ""
}
