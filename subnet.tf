resource "aws_subnet" "my_subnet_public" {
  vpc_id = "${aws_vpc.my_vpc.id}"
#  availability_zone = "eu-west-1a"
  cidr_block = "10.0.0.0/24"
  map_public_ip_on_launch = true
  tags = {
      Name = "${var.project}-${var.env}-subnet"
      Project = "${var.project}"
      Environment = "${var.env}"
  }
}

resource "aws_subnet" "my_subnet_private" {
  vpc_id = "${aws_vpc.my_vpc.id}"
#  availability_zone = "eu-west-1a"
  cidr_block = "10.0.1.0/24"
  map_public_ip_on_launch = false
  tags = {
      Name = "vpc-${var.project}-${var.env}-subnet"
      Project = "${var.project}"
      Environment = "${var.env}"
  }
}