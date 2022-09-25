#----------------(Public 1a subnet)-------------------------#
resource "aws_subnet" "public-1a" {
  vpc_id     = aws_vpc.vpc-1.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "public-1a"
  }
}
#----------------(Public 1b subnet)-------------------------#
resource "aws_subnet" "public-1b" {
  vpc_id     = aws_vpc.vpc-1.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "public-1b"
  }
}
#----------------(Private 1a subnet)-------------------------#
resource "aws_subnet" "private-1a" {
  vpc_id     = aws_vpc.vpc-1.id
  cidr_block = "10.0.3.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "private-1a"
  }
}
#----------------(private 1b subnet)-------------------------#
resource "aws_subnet" "private-1b" {
  vpc_id     = aws_vpc.vpc-1.id
  cidr_block = "10.0.4.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "private-1b"
  }
}