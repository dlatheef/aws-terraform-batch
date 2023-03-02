resource "aws_subnet" "blue_vpc_pub_subs" {
  count = 3
  vpc_id     = aws_vpc.blue_VPC.id
  cidr_block = "${element(var.public_subnet_cidrs, count.index)}"
  availability_zone = "${element(var.az_zones, count.index)}"
  
    tags = {
    Name = "blue_vpc_pub_subs-${count.index+1}"
  }
  
}

resource "aws_subnet" "blue-vpc-pvt-sub" {
  count = 3
  vpc_id     = aws_vpc.blue_VPC.id
  cidr_block = element(var.private_subnet_cidrs,count.index)
  availability_zone = element(var.az_zones,count.index)

  tags = {
    Name = "blue_vpc-pvt-sub-${count.index+1}"
  }
} 

 resource "aws_route_table_association" "pub_route_asso" {
  count = 3
  subnet_id      = "${element(aws_subnet.blue_vpc_pub_subs.*.id, count.index)}"
  route_table_id = aws_route_table.blue-vpc_pub_route.id
 
} 

resource "aws_route_table_association" "pvt_route_asso" {
  count = 3
  subnet_id      = "${element(aws_subnet.blue-vpc-pvt-sub.*.id, count.index)}"
  route_table_id = aws_route_table.blue-vpc_pvt_route.id
} 



