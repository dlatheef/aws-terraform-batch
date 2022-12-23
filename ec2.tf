### This instance belongs to public subnet 1 #####

/* resource "aws_instance" "Pub-Server1" {
  count = 4 #0,1,2,3
  ami           = "ami-0b0dcb5067f052a63" # us-east-1
  instance_type = "t2.micro"
  key_name   = "test_key"
  security_groups = [ aws_security_group.IBM_vpc_pub_sg.id ]
  subnet_id = aws_subnet.pub_sub1.id
  associate_public_ip_address = true
  availability_zone = var.az_zone
  
  root_block_device {
       volume_size           = 20 
    # (8 unchanged attributes hidden)
  }


  tags = {
    Name = "IBM-pub-server-${(count.index+1)}" #1,2,3,4
    #Name ="WEB-SERVER-${count.index+1}"
  }

  } */

/* resource "aws_instance" "websers" {
  count = 3 #0,1,2,3
  ami           = "ami-0b0dcb5067f052a63" # us-east-1
  instance_type = "t2.micro"
  key_name   = "test_key"
  security_groups = [ aws_security_group.IBM_vpc_pub_sg.id ]
  subnet_id = aws_subnet.pub_sub1.id
  associate_public_ip_address = true
  availability_zone = var.az_zone
  
  root_block_device {
       volume_size           = 50 
    # (8 unchanged attributes hidden)
  }


  tags = {
    Name = "webserver-${(count.index+1)}" #1,2,3,4
    #Name ="WEB-SERVER-${count.index+1}"
  }

  } */





/* ############ private Instance #################
  resource "aws_instance" "Pvt-Server" {
  ami           = "ami-0b0dcb5067f052a63" # us-east-1
  instance_type = "t2.micro"
  key_name   = "test_key"
  subnet_id = aws_subnet.pvt_sub1.id
  security_groups = [ aws_security_group.IBM_VPC_PVT_sg.id ] 
  #associate_public_ip_address = true
  tags = {
    Name = "IBM-pvt-server"
  }

  } */

  