resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"
  instance_tenancy = var.instance_tenancy
  enable_dns_hostnames = var.enable_dns_hostnames
  enable_dns_support = var.enable_dns_support

  tags = {
      Name = "${var.project}-${var.env}-vpc"
      Project = "${var.project}"
      Environment = "${var.env}"
  }
}