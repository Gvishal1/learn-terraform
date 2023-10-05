resource "aws_instance" "test" {
  ami = "ami-03265a0778a880afb"
  instance_type = var.instance_type == null ? "t3.medium" : var.instance_type
}

variable "instance_type" {
  default = null
}


