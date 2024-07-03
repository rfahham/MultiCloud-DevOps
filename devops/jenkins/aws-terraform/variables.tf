variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "vpc_cidr_block" {
  type    = string
  default = "10.0.0.0/16"
}

variable "vpc_name" {
  type    = string
  default = "master-vpc"
}

variable "sub_net_name" {
  type    = string
  default = "master-sub"
}

variable "sub_net_cidr_block" {
  type    = string
  default = "10.0.0.0/24"
}

variable "sub_net_availability_zone" {
  type    = string
  default = "us-east-1a"
}

variable "internet_gateway_name" {
  type    = string
  default = "master-gw"
}

variable "route_table_name" {
  type    = string
  default = "master-rt"
}

variable "key_pair_name" {
  type    = string
  default = "master-key"
}

variable "instance_name" {
  type    = string
  default = "master-ec2"
}

variable "instance_ami" {
  type    = string
  default = "ami-053b0d53c279acc90"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}