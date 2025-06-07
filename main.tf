provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "one" {
count = 5
ami = "ami-09299e47e83cceaa7"
instance_type = "t2.medium"
key_name = "dev.key"
vpc_security_group_ids = ["sg-0030d9431d2da0cdc"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["Jenkins", "Nexus", "Tomcat-1", "Tomcat-2", "Monitoring server"]
}
