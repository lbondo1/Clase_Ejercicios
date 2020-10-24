provider "aws" {
  profile = var.aws_profile
  region  = var.aws_region
}

resource "aws_instance" "example" {
  ami           = "ami-2757f631"
  instance_type = "t2.micro"
  tags = {
    Name = "server1"
  }

}