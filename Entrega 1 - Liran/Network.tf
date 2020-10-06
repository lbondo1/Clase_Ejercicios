resource "aws_vpc" "Practico-Nuevo-vpc" {
  cidr_block           = var.CIDR
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = "VPC_Practico-Nuevo_Terraform"

  }
}

resource "aws_subnet" "Practico-Nuevo-private-subnet" {
  vpc_id                  = aws_vpc.Practico-Nuevo-vpc.id
  cidr_block              = var.subnet
  map_public_ip_on_launch = "true"
  tags = {
    Name = "Practico-Nuevo-subnet-terraform"
  }
}

resource "aws_internet_gateway" "Practico-Nuevo-gateway" {
  vpc_id = aws_vpc.Practico-Nuevo-vpc.id
  tags = {
    Name = "Practico-Nuevo-gateway"
  }
}

resource "aws_default_route_table" "Practico-Nuevo-route" {
  default_route_table_id = aws_vpc.Practico-Nuevo-vpc.default_route_table_id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.Practico-Nuevo-gateway.id
  }
  tags = {
    Name = "Practico-Nuevo-default-route"
  }
}