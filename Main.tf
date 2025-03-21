provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "my_ec2" {
  ami             = "ami-08b5b3a93ed654d19"  # Use the verified AMI ID
  instance_type   = "t2.micro"
  key_name        = "My_Testpair"
  tags = {
    Name = "TerraformEc2"
  }
}
