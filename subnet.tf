
#### Public subnets CIDRS ###
resource "aws_subnet" "pub_subnets" {
  count = 3 # 1,2,3
  vpc_id     = aws_vpc.IBM-vpc.id
  cidr_block = element(var.pub_cidrs,count.index)
  availability_zone = element(var.az_zones,count.index)

  tags = {
    Name = "IBM-vpc-pub-sub-${count.index+1}"
      }
  /* tags = {
    Name = var.pub_sub_name
  } */
}

resource "aws_subnet" "pvt-subnets" {
  count = 3
  vpc_id     = aws_vpc.IBM-vpc.id
  cidr_block = element(var.pvt_cidrs,count.index)
  availability_zone = element(var.az_zones,count.index)
  tags = {
    Name = "IBM-vpc-pvt-sub-${count.index+1}"
  }
    /* tags = {
    Name = var.pvt_sub_name
  } */
}
