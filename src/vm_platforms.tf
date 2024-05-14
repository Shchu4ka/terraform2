variable "wm_db_zone" {
  type        = string
  default     = "ru-central1-b"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}

variable "vm_db_name" {
  type        = string
  default     = "netology-develop-platform-db"
  description = ""
}

variable "vm_db_platform_id" {
  type        = string
  default     = "standard-v3"
  description = ""
}

variable "vm_db_image" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = ""
}

variable "vm_db_preemptible" {
  type        = bool
  default     = "true"
  description = ""
}

variable "vms_resources_db"  {
  type = map(number)
  default = {
    cores = 2
    memory = 2
    core_fraction = 20
  }
}

#variable "vm_db_memory" {
#  type        = number
#  default     = "2"
#  description = ""
#}

#variable "vm_db_cores" {
#  type        = number
#  default     = "2"
#  description = ""
#}

#variable "vm_db_core_fraction" {
#  type        = number
#  default     = "20"
#  description = ""
#}

variable "vm_db_nat" {
  type        = bool
  default     = "true"
  description = ""
}

variable "vm_db_platform_name" {
  type        = string
  default     = "platform_db"
  description = ""
}
