resource "aws_instance" "example" {
  ami           = "ami-0bbc25e23a7640b9b"
  instance_type = "t2.micro"

  provisioner "local-exec" {
    command = "echo ${aws_instance.example.public_ip} > ip_address.txt"
  }
}

resource "aws_eip" "ip" {
  vpc = true
  instance = aws_instance.example.id
}

resource "aws_instance" "another" {
  ami           = "ami-0bbc25e23a7640b9b"
  instance_type = "t2.micro"
}
