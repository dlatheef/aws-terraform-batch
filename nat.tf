/* resource "aws_nat_gateway" "IBM_Nat_gateway" {
  allocation_id = aws_eip.IBM_vpc_Eip.id 
  subnet_id     =  aws_subnet.pub_sub1.id
  depends_on = [ aws_eip.IBM_vpc_Eip ]
  tags = {
    Name = "IBM_VPC_NAT_Gateway"
  }
} */
