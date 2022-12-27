resource "aws_subnet" "pub_sub1" {
  count = "${length(var.pub_sub_cidrs)}"
  vpc_id     = aws_vpc.IBM_VPC.id
  availability_zone = "${element(var.public_subnets,count.index)}"
  cidr_block = "${element(var.pub_sub_cidrs,count.index)}" 
 
  tags = {
    Name = "pub_sub_name-${count.index+1}"
  }
}

resource "aws_subnet" "pvt_sub1" {
  count = "${length(var.pvt_sub_cidrs)}"
  vpc_id     = aws_vpc.IBM_VPC.id
    availability_zone = "${element(var.private_subnets,count.index)}"
    cidr_block = "${element(var.pvt_sub_cidrs,count.index)}"
  tags = {
    Name = "pvt_sub_name-${count.index}"
  }
}

