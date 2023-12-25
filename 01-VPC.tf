

resource "aws_vpc" "vpc" {
  cidr_block           = "10.30.0.0/16"
  # enable_dns_support   = true
  # enable_dns_hostnames = true

  tags = {
    Name = "vpc"
  }

}







# resource "aws_vpc" "vpc2" {


  
# }


# variable "vpc_cidr_block" {
#   description = "CIDR block for VPC"
#   type        = list(string)
#   default     = ["10.30.0.0/16", "0.0.0.0/0"]
# }



# module "vpc" {
#   source = "terraform-aws-modules/vpc/aws"

#   name = "vpc"
#   cidr = "10.30.0.0/16"

#   azs             = ["eu-central-1a", "eu-central-1b", "eu-central-1c"]
#   private_subnets = ["10.30.1.0/24", "10.30.2.0/24", "10.30.3.0/24"]
#   public_subnets  = ["10.30.11.0/24", "10.30.12.0/24", "10.30.13.0/24"]

#   enable_nat_gateway = true
#   enable_vpn_gateway = true

#   tags = {
#     name = "vpc"
#   }
# }