#----------------(Creating route table for Public subnets)-------------------------#
resource "aws_route_table" "rtbl-public" {
  vpc_id = aws_vpc.vpc-1.id

 # route {
 #   cidr_block = "10.0.1.0/24"
 #   gateway_id = aws_internet_gateway.igw.id
 # }
 # route {
 #   cidr_block = "10.0.2.0/24"
 #   gateway_id = aws_internet_gateway.igw.id
 # }

  #route {
  #  ipv6_cidr_block        = "::/0"
  #  egress_only_gateway_id = aws_internet_gateway.igw.id
  #}

  tags = {
    Name = "rtbl-public"
  }
}

#----------------(associate Public subnets to these table)-------------------------#
resource "aws_route_table_association" "rtbl-public-a-assc" {
  subnet_id      = aws_subnet.public-1a.id
  route_table_id = aws_route_table.rtbl-public.id
}

resource "aws_route_table_association" "rtbl-public-b-assc" {
  subnet_id      = aws_subnet.public-1b.id
  route_table_id = aws_route_table.rtbl-public.id
}

#----------------(Route Public subnets to these table)-------------------------#
resource "aws_route" "publicroute" {
  route_table_id            = aws_route_table.rtbl-public.id
  destination_cidr_block    = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.igw.id
}

#====================================================================================#
#----------------(Creating route table for Private subnets)-------------------------#
resource "aws_route_table" "rtbl-private" {
  vpc_id = aws_vpc.vpc-1.id

  #route {
  #  cidr_block = "10.0.3.0/24"
  #  gateway_id = aws_nat_gateway.nat-gw.id
  #}
  #route {
  #  cidr_block = "10.0.4.0/24"
  #  gateway_id = aws_nat_gateway.nat-gw.id
  #}

  #route {
  #  ipv6_cidr_block        = "::/0"
  #  egress_only_gateway_id = aws_nat_gateway.nat-gw.id
  #}

  tags = {
    Name = "rtbl-private"
  }
}
#----------------(associate Private subnets to these table)-------------------------#
resource "aws_route_table_association" "rtbl-private-a-assc" {
  subnet_id      = aws_subnet.private-1a.id
  route_table_id = aws_route_table.rtbl-private.id
}

resource "aws_route_table_association" "rtbl-private-b-assc" {
  subnet_id      = aws_subnet.private-1b.id
  route_table_id = aws_route_table.rtbl-private.id
}
#----------------(Route Private subnets to these table)-------------------------#
resource "aws_route" "private_route" {
  route_table_id            = aws_route_table.rtbl-private.id
  destination_cidr_block    = "0.0.0.0/0"
  nat_gateway_id  = aws_nat_gateway.nat-gw.id
}