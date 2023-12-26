
resource "aws_subnet" "public-eu-central-1a" {


  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "10.30.1.0/24"
  availability_zone       = "eu-central-1a"
  map_public_ip_on_launch = true
}

resource "aws_subnet" "public-eu-central-1b" {


  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "10.30.2.0/24"
  availability_zone       = "eu-central-1b"
  map_public_ip_on_launch = true
}

resource "aws_subnet" "public-eu-central-1c" {


  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "10.30.3.0/24"
  availability_zone       = "eu-central-1c"
  map_public_ip_on_launch = true
}






resource "aws_subnet" "private-eu-central-1a" {


  vpc_id            = aws_vpc.vpc.id
  cidr_block        = "10.30.11.0/24"
  availability_zone = "eu-central-1a"
}

resource "aws_subnet" "private-eu-central-1b" {


  vpc_id            = aws_vpc.vpc.id
  cidr_block        = "10.30.12.0/24"
  availability_zone = "eu-central-1b"
}

resource "aws_subnet" "private-eu-central-1c" {


  vpc_id            = aws_vpc.vpc.id
  cidr_block        = "10.30.13.0/24"
  availability_zone = "eu-central-1c"
}










#private_subnets = ["10.30.11.0/24", "10.30.2.0/24", "10.30.3.0/24"]




# resource "aws_subnet" "subnet-public2" {

#     vpc_id = aws_vpc.vpc.id
#     cidr_block = "10.30.2.0/24"
# }

# resource "aws_subnet" "subnet-public3" {

#     vpc_id = aws_vpc.vpc.id
#     cidr_block = "10.30.3.0/24"
# }
