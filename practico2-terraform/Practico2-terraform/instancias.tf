resource "aws_instance" "terraform-practico2-instance" {
  ami           = "ami-005bb0af4ade8c765"
  instance_type = "t2.micro"
  key_name      = "practico-2"
  vpc_security_group_ids = [aws_security_group.practico-2.id,
  ]
  subnet_id = aws_subnet.practico2-private-subnet.id
  tags = {
    Name = "terraform-practico2-instance"
  }
  connection {
      type = "ssh"
      user = "centos"
      private_key = file("C:\\Users/Martin/Desktop/practico-2.pem")
      host = self.public_ip
      }
      provisioner "remote-exec" {
          inline = [
              "echo 'hola mundo' > archivo",
          ]
      }
}