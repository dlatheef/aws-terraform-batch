variable "region" {
  description = "This is aws region"
  type        = string
  default     = "us-east-1"
}

variable "access_key" {
  description = "This is access key"
  type        = string
  default     = "AKIAW4SSCAOR5NX3X44C"
}

variable "secret_key" {
  description = "This is secret key"
  type        = string
  default     = "+vhrhsgLuWcxZkkQf1EOWQ9LTUrYwsXISF+DIGkI"
}

/* variable "ami" {
  description = "This is ami id"
  type        = string
  default     = "ami-01216e7612243e0ef"
} */

variable "instance_type" {
  description = "This is instance type"
  type        = string
  default     = "t2.micro"
}
variable "az_zones" {
  description = "Availablity zones"
  type        = list
  default     = ["us-east-1a","us-east-1b","us-east-1c","us-east-1d",]
}
variable "public_subnet_cidrs" {
  description = "This is public subnets"
  type        = list
  default     = ["10.0.1.0/24","10.0.2.0/24","10.0.3.0/24","10.0.4.0/24"]
}

variable "private_subnet_cidrs" {
  description = "This is private subnets"
  type        = list
  default     = ["10.0.5.0/24","10.0.6.0/24","10.0.7.0/24","10.0.8.0/24"]
}
