# main.tf
# using this file for the initial AWS Terraform training

provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "example" {
  ami		= "ami-01107263728f3bef4"
  instance_type = "t2.micro"

  user_data = <<-EOF
              #!/bin/bash
              echo "Hello, World" > index.html
              nohup busybox httpd -f -p 8080 &
              EOF
  user_data_replace_on_change = true


  tags = {
   Name = "terraform-example"
  }
}
