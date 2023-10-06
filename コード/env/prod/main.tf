module "EC2"{
  source        = "../../modules/EC2/"
  instance_type = "t3.micro"
  subnet_id = module.Network.subnet_id
  security_group_id = module.SecurityGroup.security_group_id
  tags = "prod"
}

#test
#test2

module "Network"{
  source        = "../../modules/Network/"
  cidr_block_vpc =  "10.1.0.0/16"
  cidr_block_subnet = "10.1.0.0/24"
  tags = "prod"
}

module "SecurityGroup"{
  source = "../../modules/SecurityGroup/"
  vpc_id = module.Network.vpc_id
  tags = "prod"
}
