/* resource "aws_instance" "SERVER01" {
#  count = 3
  #ami    = data.aws_ami.amzlinux2.id 
  ami = 
  instance_type = var.instance_type
  subnet_id = aws_subnet.blue-vpc-pub-sub.id
  associate_public_ip_address = true
  vpc_security_group_ids = [aws_security_group.blue_vpc_sg.id]

tags = {
    Name ="SERVER01-${count.index+1}"
    Environment = "DEV"
    OS = "UBUNTU"
    Managed = "IAC"
  }
}
 */
