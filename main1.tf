module "my_vpc" {
    source = "./modules/vpc"
    cidr_vpc = var.cidr_vpc
    cidr_private = var.cidr_private
    cidr_public = var.cidr_public
    zone_private = var.zone_private
    zone_public = var.zone_public
}

module "my-ec2" {
    source = "./modules/new-ec2"
    count = var.aws_count   
    aws_ami = var.aws_ami
    instance_type = var.instance_type
    aws_vpc = var.aws_vpc
    aws_subnet = ["10.0.4.0/24", "10.0.5.0/24","10.0.6.0/24"]
}