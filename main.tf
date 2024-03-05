module "vpc" {
 source = "./modules/vpc"  
  vpc_cidr                = var.vpc_cidr
  vpc_tag                 = var.vpc_tag
  sub1_cidr_block         = var.sub1_cidr_block
  sub1_availability_zone  = var.sub1_availability_zone
  sub2_availability_zone  = var.sub2_availability_zone
  sub2_cidr_block         = var.sub2_cidr_block
  map_public_ip_on_launch = var.map_public_ip_on_launch
}
module "ec2" {
    source = "./modules/ec2"
    ami_id = var.ami_id
    region =var.region
    instance_type = var.instance_type
    security_group_ids = module.vpc.security_group
    pub_subnet_1_id = module.vpc.pub_subnet_1
    pub_subnet_2_id = module.vpc.pub_subnet_2
    depends_on        = [module.vpc]
  
}