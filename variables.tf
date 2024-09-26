###cloud vars
/*
  type        = string
  default     = "y0_AgAAAAAO7KeEAATuwQAAAAD9HzJ0AACPj14iMtlF9qa4VQvgzvVyVq6TmA"
  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
}
*/
variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
  default = "b1g75pcaq4t6a3brbmh2"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
  default = "b1g9t4d4sro2raknaqce"
}
variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "vm_web_zone" {
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

variable "vpc_web_name" {
  type        = string
  default     = "develop1"
  description = "VPC subnet name"
}

variable "vpc_db_name" {
  type        = string
  default     = "develop2"
  description = "VPC  subnet name"
}
###ssh vars
/*
variable "vms_ssh_root_key" {
  type        = string
  default     = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIMMg8HJ2u3X3e19ai4dC8Rp2+FxGVZnPTJMKolwIc7qq ya"
  description = "ssh-keygen -t ed25519"
}
*/
###new vars
variable "vm_web_name" {
  type = string
  default = "netology-develop-platform-web"
  }

variable "vm_web_image" {
  type = string
  default = "ubuntu-2004-lts"
}

variable "vm_web_platform_id" {
  type = string
  default = "standard-v1"
  }
/*
variable "vm_web_cores" {
  type = number
  default = 2
  }

variable "vm_web_memory" {
    type = number
    default = 1  
  }

variable "vm_web_fract" {
    type = number
    default = 5
  }
*/
variable "vm_web_prmt" {
  type = bool
  default = true
  }

variable "vm_web_nat" {
  type = bool
  default = false
  }

/*variable "vm_web_sp" {
  type = bool
  default = true
  
}
*/
variable "vms_resources" {
  default     = {
      web ={cores ="2",memory ="1",core_fraction ="5"},
      db = {cores ="2",memory ="2",core_fraction ="5"}     
  }
}

variable "meta" {
   default = {ssh_key="ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIMMg8HJ2u3X3e19ai4dC8Rp2+FxGVZnPTJMKolwIc7qq ya",
              sp_e="1"
   }
}
