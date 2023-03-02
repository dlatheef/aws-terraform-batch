resource "aws_internet_gateway" "blue_vpc_IGW" {
  vpc_id = aws_vpc.blue_VPC.id

  tags = {
    Name = "Blus_vpc_IGW"
  }
}