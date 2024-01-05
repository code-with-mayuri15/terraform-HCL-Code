variable "cidr_vpc" {
  default = "10.10.0.0/16"
}

variable "cidr_private" {
    default = "10.10.0.0/20"
}

variable "cidr_public" {
    type = list(string)
    default = "10.10.16.0/20","10.10.17.0","10.10.18.0.0"
}

variable "zone_private" {
    default = "us-east-1b"
}

variable "zone_public" {
    default = "us-east-1a" 
}


variable "aws_ami"{
   default = "ami-053b0d53c279acc90"
}

variable "instance_type" {
   default = "t2.medium"

variable "aws_vpc" {
    default = "vpc-08dde30c2027116f4"
}

variable "aws_count" {
    default = "10"
  
}