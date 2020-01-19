resource "aws_instance" "example" {
  ami           = "ami-0bbc25e23a7640b9b"
  instance_type = "t2.micro"
}
