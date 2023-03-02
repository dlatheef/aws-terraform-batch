resource "aws_route_table" "blue-vpc_pub_route" {
  vpc_id = aws_vpc.blue_VPC.id

route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.blue_vpc_IGW.id
  }
tags = {
    Name = "blue-vpc-pub_table"
  }
}

resource "aws_route_table" "blue-vpc_pvt_route" {
  vpc_id = aws_vpc.blue_VPC.id

tags = {
    Name = "blue-vpc-pvt_table"
  }
}

