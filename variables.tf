variable "ami_id" {
  description = "ID of the AMI to use for EC2 instance"
}

variable "instance_type" {
  description = "Type of EC2 instance"

}
variable "region" {
    type = string
  
}



variable "vpc_tag" {
  type = string
}
variable "sub1_cidr_block" {
  type = string
}
variable "sub1_availability_zone" {
  type = string
}
variable "sub2_cidr_block" {
  type = string
}
variable "sub2_availability_zone" {
  type = string
}
variable "map_public_ip_on_launch" {
  type = string
}
variable "vpc_cidr" {
  type = string
}