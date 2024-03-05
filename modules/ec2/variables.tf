variable "ami_id" {
  description = "ID of the AMI to use for EC2 instance"
}

variable "instance_type" {
  description = "Type of EC2 instance"

}


variable "region" {
    type = string
  
}
variable "pub_subnet_1_id" {
  type = string
}
variable "pub_subnet_2_id" {
  type = string
}
variable "security_group_ids" {
  description = "IDs of security groups to attach to the EC2 instance"
  type        = list(string)
}