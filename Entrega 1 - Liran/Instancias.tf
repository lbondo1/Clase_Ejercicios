resource "aws_instance" "Terraform-Practico-Nuevo" {
  ami           = "ami-0817d428a6fb68645"
  instance_type = "t2.micro"
  key_name      = "Practico-Nuevo"
  vpc_security_group_ids = [aws_security_group.Practico-Nuevo.id,
  ]
  subnet_id = aws_subnet.Practico-Nuevo-private-subnet.id
  tags = {
    Name = "terraform-practico2-instance"
  }
  connection {
      type = "ssh"
      user = "root"
      private_key = file("/home/kali/Documents/Repositorio - Github/Clase_Ejercicios/Entrega 1 - Liran/Terraform-Practico-Nuevo.pem")
      host = self.public_ip
      }
      provisioner "remote-exec" {
          inline = [
              "sudo apt-get update -y",
              "sudo apt-get install -y ca-certificates wget",
              "wget https://get.glennr.nl/unifi/install/unifi-5.13.32.sh",
          ]
          on_failure = continue
      }
}