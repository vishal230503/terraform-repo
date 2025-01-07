provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "one" {
count = 5
ami = "ami-021e165d8c4ff761d"
instance_type = "t2.micro"
key_name = "mircoservices"
vpc_security_group_ids = ["sg-039089578050dc81c"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["dev-1", "dev-2", "ansible", "test-1", "test-2"]
}
