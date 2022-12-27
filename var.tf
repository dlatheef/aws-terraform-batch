variable "region" {
  type = string
  default = "us-east-1"
}
#variable "instance_type" {}
#variable "access_key" {}
#variable "secret_key" {}
#variable "ami_id" {}
variable "vpc_cidr" {
  type = string
  default = "20.0.0.0/16"
}   
variable "vpc_name"     {
  type = string
  default = "IBM-VPC"
}
variable "env" {
  type = string
  default = "dev"
}
variable "public_subnets" {
    type = list
    default = ["us-east-1a","us-east-1b","us-east-1c"]
}

variable "pub_sub_cidrs" {
    type = list
    default = ["20.0.2.0/24","20.0.3.0/24","20.0.4.0/24","20.0.5.0/24","20.0.6.0/24"]
}

variable "private_subnets" {
    type = list
    default = ["us-east-1a","us-east-1b","us-east-1c"]
}

variable "pvt_sub_cidrs" {
    type = list
    default = ["20.0.7.0/24","20.0.8.0/24","20.0.9.0/24","20.0.10.0/24","20.0.11.0/24"]
}

variable "amis" {
type = map
    description = "AMIs by region"
    default = {
    us-east-1 = "ami-08c40ec9ead489470" # ubuntu 20.04 LTS
		us-east-2 = "ami-097a2df4ac947655f" # ubuntu 20.04 LTS
		
    }
}
