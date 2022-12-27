resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.IBM_VPC.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
  tags = {
    Name = "public_routing_table"
  }
}

resource "aws_route_table" "private_route_table" {
  vpc_id = aws_vpc.IBM_VPC.id

    tags = {
    Name = "private_routing_table"
  }
}

resource "aws_route_table_association" "public_table_assotion" {
    count = "${length(var.public_subnets)}"
  subnet_id      = "${element(aws_subnet.pub_sub1.*.id, count.index+1)}"
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_route_table_association" "private_table_assotion" {
    count = "${length(var.private_subnets)}"
  subnet_id      = "${element(aws_subnet.pvt_sub1.*.id, count.index+1)}"
  route_table_id = aws_route_table.private_route_table.id
}