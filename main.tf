provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-06031e2c49c278c8f"
instance_type = "t2.medium"
key_name = "L.key"
vpc_security_group_ids = ["sg-08783cc565c8cf9e1"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "tomcat-1", "tomcat-2", "Monitoring server"]
}
