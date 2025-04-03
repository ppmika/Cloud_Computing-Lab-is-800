terraform {
  backend "s3" {
    bucket         = "tartela-bucket"
    key            = "terraform/myapp/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}

resource "aws_instance" "example" {
  ami           ="ami-00110730b7437ee9e"# Replace with correct AMI ID
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-Test-Instance"
  }
}
