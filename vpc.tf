resource "aws_vpc" "IBM-vpc" {
  cidr_block       = var.vpc_cidr
    instance_tenancy = "default"

  tags = {
    Name = "IBM-vpc"
  }
}
output "vpc_id" {

  description = "ID of the vpc"

  value       = "aws_vpc.vpc_id"

}