variable "aws_region" {
  description = "AWS region for the Terraform deployment."
  type        = string
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "Name of the EKS cluster."
  type        = string
  default     = "clustershield360-eks"
}

variable "vpc_name" {
  description = "Name tag for the VPC."
  type        = string
  default     = "cluster-vpc"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC."
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_1_cidr" {
  description = "CIDR block for the first public subnet."
  type        = string
  default     = "10.0.1.0/24"
}

variable "public_subnet_2_cidr" {
  description = "CIDR block for the second public subnet."
  type        = string
  default     = "10.0.2.0/24"
}

variable "az_1" {
  description = "Availability Zone for the first subnet."
  type        = string
  default     = "us-east-1a"
}

variable "az_2" {
  description = "Availability Zone for the second subnet."
  type        = string
  default     = "us-east-1b"
}
