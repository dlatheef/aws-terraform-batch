resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.IBM_VPC.id

  tags = {
    Name = "IBM-VPC-IGW"
  }
}