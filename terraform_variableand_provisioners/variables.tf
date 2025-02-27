
variable "region" {
  type = string
  default = "us-east-1"
}

variable "typeinstances" {
  type        = string
  default     = "t2.micro"
  description = "type of the instances"
}


variable "VPC_cidr" {
  type = string
  default = "192.168.0.0/16" 
}

variable "public_subnet_cidr" {
  type = string
  default = "192.168.1.0/24"
}  

variable "AZ" {
  type = string
  default = "us-east-1a"
}

variable "project-name" {
  type    = string
  default = "Terraform-variables-lab"
}
