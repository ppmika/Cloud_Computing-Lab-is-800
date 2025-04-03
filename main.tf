##First Part/*
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {
  count = 3  # Creates 3 instances

  ami           = "ami-00110730b7437ee9e"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-Instance-${count.index}"
  }
}
*/

##2nd part
provider "aws" {
  region = "us-east-1"
}

variable "instance_types" {
  type    = list(string)
  default = ["t2.micro", "t3.micro", "t2.small"]
}

resource "aws_instance" "web" {
  count = length(var.instance_types)  # Dynamically set based on the list size

  ami           = "ami-00110730b7437ee9e"
  instance_type = var.instance_types[count.index]

  tags = {
    Name = "Terraform-Instance-${count.index}"
  }
}
