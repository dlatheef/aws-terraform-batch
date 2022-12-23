#####Security for Public network ################
resource "aws_security_group" "IBM_vpc_pub_sg" {
  name        = "IBM-vpc-pub_sg"
  description = "Allow TLS inbound traffic"
  vpc_id      =  aws_vpc.IBM-vpc.id

  ingress {
    description      = "ICMP"
    from_port        = 0
    to_port          = 0
    protocol         = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
     }

ingress {
description = "ssh"
protocol = "tcp"
from_port = 22
to_port = 22
cidr_blocks = ["0.0.0.0/0"]

}
egress {
    description = "output from webserver"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }


     tags = {
    Name = "allow_ICMP"
  }
}

#####Security for Private network ################
resource "aws_security_group" "IBM_VPC_PVT_sg" {

name = "IBM_VPC_PVT_sg"

description = "Allow Web inbound traffic"
vpc_id = aws_vpc.IBM-vpc.id

ingress {
protocol = "tcp"
from_port = 22
to_port = 22
cidr_blocks = ["10.0.0.0/24"]
#security_groups = [ "aws_security_group.IBM_vpc_pub_sg.id" ]

}


ingress {
protocol = "icmp"
from_port = -1
to_port = -1
cidr_blocks = ["10.0.0.0/24"]
}

tags = {
    Name = "IBM_VPC_PVT_sg"
}


egress {

protocol = "-1"

from_port = 0

to_port = 0

cidr_blocks = ["0.0.0.0/0"]

}

}