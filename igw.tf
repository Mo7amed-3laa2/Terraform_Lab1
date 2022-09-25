#----------------(Creating an internet gateway)-------------------------#

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc-1.id

  tags = {
    Name = "igw"
  }
}