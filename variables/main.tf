
variable "vpcname" {
  type        = string
  default     = "myvpc"
  description = "description"
}

variable "sshport" {
  type        = number
  default     = 22
}

variable "enabled"  {
  default = true
}

variable mylist {
  type        = list(string)
  default     =  ["Value1", "Value2"]
}

variable "mymap" {
  type        = map
  default     =  {
    Key1 = "Value1"
    Ke2 = "Value2"
  }
}

variable "inputname" {
  type = string
  description = "Set the name of the VPC"
}

resource "aws_vpc" "myvpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = var.inputname
  }
}

output "vpcid" {
  value       = aws_vpc.myvpc.id
}

variable "mytuple" {
  type        = tuple ([string,number,string])
  default = ["cat", 1, "dog"]
}

variable myobject {
  type        = object({name = string, port = list(numer)})
  default     = {
    name = "LB"
    port = [22, 25, 80]
  
  }
  description = "description"
}

