variable "region" {
  default = "us-east-1"
}

variable "profile" {
  default = "default"
}

variable "CIDR" {
  default = "172.30.0.0/16"
}

variable "subnet" {
  default = "172.26.1.0/24"
}

output "dns-publico" {
  value = aws_instance.terraform-Practico-Nuevo-instance.public_ip
}