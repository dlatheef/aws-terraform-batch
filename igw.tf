resource "aws_internet_gateway" "IBM_IGW" {
  vpc_id = aws_vpc.IBM-vpc.id

  tags = {
    Name = "IBM_IGW"
  }
}

