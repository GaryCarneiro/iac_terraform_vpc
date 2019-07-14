terraform {
  backend "s3" {
  encrypt = true
   bucket = "terraform-tijori"
   region = "us-west-2"
   key = "terraform_vpc/terraform.tfstate"
  }
}