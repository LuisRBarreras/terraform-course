
provider "aws" {
  region = "us-west-1"
}

variable "environment" {
  type = "string"
}

resource "aws_instance" "ec2" {
  ami = "xxxxx-xx-xx"
  instance_type = "t2.micro"
  count = var.environment == "prod" ? 1 : 0

}