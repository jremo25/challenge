

# resource "aws_route_table" "public" {
#   vpc_id = aws_vpc.vpc.id

#   route = [
#     {
#       cidr_block                 = "0.0.0.0/0"
#       gateway_id                 = aws_internet_gateway.igw.id
#       nat_gateway_id             = ""
#       carrier_gateway_id         = ""
#       destination_prefix_list_id = ""
#       egress_only_gateway_id     = ""
#       instance_id                = ""
#       ipv6_cidr_block            = ""
#       local_gateway_id           = ""
#       network_interface_id       = ""
#       transit_gateway_id         = ""
#       vpc_endpoint_id            = ""
#       vpc_peering_connection_id  = ""
#       core_network_arn           = ""
#     },
#   ]

#   tags = {
#     Name = "public"
#   }
# }





#__________________
# import {
#   to = aws_route_table.public
#   id = "rtb-01cb2d830ea70773d"
# }

#terraform import aws_route_table.public rtb-01cb2d830ea70773d

#__________________

# resource "aws_route" "route-igw" {
#   route_table_id            = aws_route_table.public.id
#   destination_cidr_block    = "0.0.0.0/0"
#   gateway_id                = aws_internet_gateway.igw.id
#   depends_on                = [aws_route_table.public]
# }

# resource "aws_route_table_association" "route-igw" {
#   gateway_id     = aws_internet_gateway.igw.id
#   route_table_id = aws_route_table.public.id
# }

#$ terraform import aws_route_table_association.route-igw igw-052af57c06c2abf23/rtb-016efc524d6b62e05
#___________________






















#___________________________________



# resource "aws_route_table" "private" {
#   vpc_id = aws_vpc.vpc.id


#   route = [
#     {
#       cidr_block                 = "0.0.0.0/0"
#       nat_gateway_id             = aws_nat_gateway.nat.id
#       carrier_gateway_id         = ""
#       destination_prefix_list_id = ""
#       egress_only_gateway_id     = ""
#       gateway_id                 = ""
#       instance_id                = ""
#       ipv6_cidr_block            = ""
#       local_gateway_id           = ""
#       network_interface_id       = ""
#       transit_gateway_id         = ""
#       vpc_endpoint_id            = ""
#       vpc_peering_connection_id  = ""
#       core_network_arn           = ""
#     },
#   ]


#   tags = {
#     Name = "private"
#   }
# }


# import {
#   to = aws_default_route_table.private
#   id = "rtb-01a5f9e93d4a1bf70"
# }


# locals {
#   prefix_cidr = "10.30.0.0/16"
# }

# output "subnets" {
#   value = [
#     {
#       name = "private-eu-central-1a"
#       cidr = cidrsubnet(local.prefix_cidr, 8, 11)
#     },
#     {
#       name = "private-eu-central-1b"
#       cidr = cidrsubnet(local.prefix_cidr, 8, 12)
#     },
#     {
#       name = "private-eu-central-1c"
#       cidr = cidrsubnet(local.prefix_cidr, 8, 13)
#     },
#   ]
# }


#resource_aws_route_table: allow using compressed IPV4 CIDR
#resource_aws_route_table: plan time validation to `cidr_block`

#______________






# # # #public

# resource "aws_route_table_association" "public-eu-central-1a" {
#   subnet_id      = aws_subnet.public-eu-central-1a.id
#   route_table_id = aws_route_table.public.id
# }

# resource "aws_route_table_association" "public-eu-central-1b" {
#   subnet_id      = aws_subnet.public-eu-central-1b.id
#   route_table_id = aws_route_table.public.id
# }

# resource "aws_route_table_association" "public-eu-central-1c" {
#   subnet_id      = aws_subnet.public-eu-central-1c.id
#   route_table_id = aws_route_table.public.id
# }

# #private

# resource "aws_route_table_association" "private-eu-central-1a" {
#   subnet_id      = aws_subnet.private-eu-central-1a.id
#   route_table_id = aws_route_table.private.id
# }

# resource "aws_route_table_association" "private-eu-central-1b" {
#   subnet_id      = aws_subnet.private-eu-central-1b.id
#   route_table_id = aws_route_table.private.id
# }
# resource "aws_route_table_association" "private-eu-central-1c" {
#   subnet_id      = aws_subnet.private-eu-central-1c.id
#   route_table_id = aws_route_table.private.id
# }