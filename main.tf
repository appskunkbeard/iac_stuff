# main.tf
# using this file for the initial AWS Terraform training

provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "example" {
  ami		= "ami-01107263728f3bef4"
  instance_type = "t2.micro"

  tags = {
   Name = "terraform-example"
  }
}
