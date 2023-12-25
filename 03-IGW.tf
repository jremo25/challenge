resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id



  tags = {
    Name = "vpc"
  }
}





#"${aws_vpc.vpc.id}" , aws_vpc.vpc.id



# resource "aws_internet_gateway" "igw2" {
#   vpc_id = "${aws_vpc.main.id}"
# }