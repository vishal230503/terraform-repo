provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "one" {
count = 5
ami = "ami-0ddc798b3f1a5117e"
instance_type = "t2.micro"
key_name = "webserver"
vpc_security_group_ids = ["sg-05ef1a9343c8a2163"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["ansible", "dev-1", "dev-2", "test-1", "test-2"]
}
