variable "region" {
  description = "selected-region"
    type        = string
  default     = "us-east-1"
}

variable "access_key" {
  description = "access-key"
    type        = string
  default     = ""
}

variable "secret_key" {
  description = "secret-key"
    type        = string
  default     = ""
}

variable "vpc_cidr" {
  description = "vpc_cidr-block"
    type        = string
  default     = "10.0.0.0/16"
}

/* variable "az_zone" {
  default = "us-east-1a"
} */
variable "az_zones" {
  description = "Availability zones"
  type        = list
  default     = ["us-east-1a","us-east-1b","us-east-1c"]
}

variable "pub_cidrs" {
  description = "Public_subnets"
  type = list
  default = ["10.0.1.0/24","10.0.2.0/24","10.0.3.0/24"] 
}

variable "pvt_cidrs" {
  description = "Private_subnets"
  type = list
  default = ["10.0.4.0/24","10.0.5.0/24","10.0.6.0/24"] 
}
### tag names ###
/* variable "pub_sub_name1" {
    description = "public-sub-name1"
    type = string
    default = "IBM-vpc-pub-sub1"
}

variable "pub_sub_name2" {
    description = "public-sub-name2"
    type = string
    default = "IBM-vpc-pub-sub2"
}

#### tag names for pvt subnets ###

variable "pvt_sub_name1" {
    description = "private-sub-name1"
    type = string
    default = "IBM-vpc-pvt-sub1"
}

variable "pvt_sub_name2" {
    description = "private-sub-name2"
    type = string
    default = "IBM-vpc-pvt-sub2"
} */






