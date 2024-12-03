locals {
  mashine_name1 ="${yandex_vpc_subnet.develop1.zone}-${var.vm_web_name}" 
  mashine_name2 ="${yandex_vpc_subnet.develop2.zone}-${var.vm_db_name}"
}


variable "test" {
type = map(object({
  ssh_env = string
  ip_a = string
}))
default = {
  dev1 = {
    ssh_env = "ssh -o 'StrictHostKeyChecking=no' ubuntu@89.169.133.252"
    ip_a = "10.0.1.16"
  }
  dev2 = {
    ssh_env = "ssh -o 'StrictHostKeyChecking=no' ubuntu@130.193.52.5"
    ip_a = "10.0.2.27"
  }
}
}
