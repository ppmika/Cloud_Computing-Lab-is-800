
resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.16.0/20"
}

resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = "10.0.16.0/24"
  map_public_ip_on_launch = true
  availability_zone        = "us-east-2a" 
}

resource "aws_subnet" "private_subnet" {
  vpc_id           = aws_vpc.my_vpc.id
  cidr_block       = "10.0.17.0/24"
  availability_zone = "us-east-2b"  
}
