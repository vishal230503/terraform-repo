provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "one" {
  ami           = "ami-00f251754ac5da7f0"
  instance_type = "t2.micro"
  key_name      = "webserver"
  vpc_security_group_ids = ["sg-05ef1a9343c8a2163"]
  tags = {
    Name = "test-server"
  }
}
