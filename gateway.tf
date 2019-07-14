resource "aws_internet_gateway" "aws_igw" {
  vpc_id = "${aws_vpc.my_vpc.id}"

  tags = {
      Name = "${var.project}-${var.env}-igw"
      Project = "${var.project}"
      Environment = "${var.env}"
  }
}