variable "region" {
 description = "The AWS region to deploy the resources"
 type        = string
 default     = "us-east-1"
}

variable "vpc_a_cidr" {
 description = "The CIDR block for the VPC A"
 type        = string
 default     = "10.0.0.0/16"
}

variable "vpc_b_cidr" {
 description = "The CIDR block for the VPC B"
 type        = string
 default     = "10.1.0.0/16"
}

variable "subnet_a_cidr" {
 description = "The CIDR block for the subnet A"
 type        = string
 default     = "10.0.1.0/24"
}

variable "subnet_b_cidr" {
 description = "The CIDR block for the subnet B"
 type        = string
 default     = "10.1.1.0/24"
}

variable "availability_zone" {
 description = "The availability zone for the subnet A"
 type        = string
 default     = "us-east-1a"
}

variable "availability_zone_b" {
 description = "The availability zone for the subnet B"
 type        = string
 default     = "us-east-1b"
}