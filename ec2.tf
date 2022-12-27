resource "aws_instance" "amazon-linux" {
  count = "${var.env == "Dev" ? 3 : 1}"
  ami          = "${lookup(var.amis,var.region)}" 
  instance_type = "t2.micro"
  subnet_id = "${element(aws_subnet.pub_sub1.*.id, count.index+1)}"
  associate_public_ip_address = true

tags = {
    Name ="SERVER01-${count.index+1}"
    env = var.env
    OS = "UBUNTU"
    Managed = "IAC"
    
  }
  depends_on = [
      aws_subnet.pub_sub1,
      aws_subnet.pvt_sub1
    ]
}