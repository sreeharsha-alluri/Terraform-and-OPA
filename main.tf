provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {
  instance_type = "t2.micro"
  ami           = "ami-0aa2b7722dc1b5612"
  tags = {
    Name = "Terraform_Instance_through_OPA"
    
  }
}
