resource "aws_security_group" "blue_vpc_sg" {
  name        = "Nasir-vpc-sg"
  description = "Allow TLS inbound traffic"
  vpc_id      =  aws_vpc.blue_VPC.id

  ingress {
    description      = "ICMP"
    from_port        = -1
    to_port          = -1
    protocol         = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
     }

ingress {
protocol = "tcp"
from_port = 22
to_port = 22
cidr_blocks = ["0.0.0.0/0"]

}
     tags = {
    Name = "allow_ICMP"
  }
}