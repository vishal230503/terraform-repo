provider "aws" {
region = "us-east-1"
}
resource "aws_instance" "one" {
count = 4
ami = "ami-000ec6c25978d5999"
instance_type = "t2.medium"
key_name = "usest"
vpc_security_group_ids = ["sg-0c81fd13e3199b8bf"]
tags = {
Name = var.instance_names[count.index]
}
}
variable "instance_names" {
default = ["jenkins", "nexus", "tomcat-1", "tomcat-2"]
}
