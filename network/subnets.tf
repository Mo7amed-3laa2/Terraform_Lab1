#----------------(Public 1a subnet)-------------------------#
resource "aws_subnet" "public-1a" {
  vpc_id     = aws_vpc.vpc-1.id
  cidr_block = var.subnet_public1a_cidr
  availability_zone = var.avz_1a

  tags = {
    Name = "public-1a"
  }
}
#----------------(Public 1b subnet)-------------------------#
resource "aws_subnet" "public-1b" {
  vpc_id     = aws_vpc.vpc-1.id
  cidr_block = var.subnet_public1b_cidr
  availability_zone = var.avz_1b

  tags = {
    Name = "public-1b"
  }
}
#----------------(Private 1a subnet)-------------------------#
resource "aws_subnet" "private-1a" {
  vpc_id     = aws_vpc.vpc-1.id
  cidr_block = var.subnet_private1a_cidr
  availability_zone = var.avz_1a

  tags = {
    Name = "private-1a"
  }
}
#----------------(private 1b subnet)-------------------------#
resource "aws_subnet" "private-1b" {
  vpc_id     = aws_vpc.vpc-1.id
  cidr_block = var.subnet_private1b_cidr
  availability_zone = var.avz_1b

  tags = {
    Name = "private-1b"
  }
}