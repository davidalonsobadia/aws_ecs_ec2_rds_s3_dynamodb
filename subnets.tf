resource "aws_subnet" "pub_subnet" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = "192.168.1.0/24"
  availability_zone = "us-east-1a"

  map_public_ip_on_launch = true
}


resource "aws_subnet" "pub_subnet_2" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = "192.168.31.0/24"
  availability_zone = "us-east-1b"

  map_public_ip_on_launch = true
}