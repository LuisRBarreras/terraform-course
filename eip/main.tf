
provider "aws" {
  region = "us-west-1"
}

resource "aws_instance" "ec2" {
  ami = "ami-0d3b8f63beaac1de6"
  instance_type = "t2.micro"
}

resource "aws_eip" "elasticeip" {
  instance = aws_instance.ec2.id
  

}
output "EIP" {
  value = aws_eip.elasticeip.public_ip
}