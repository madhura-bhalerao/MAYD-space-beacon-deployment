variable "aws_region" {
  description = "AWS region for the outpost"
  type        = string
}

variable "aws_version" {
  description = "AWS provider version"
  type        = string

}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "subnet_cidr_block" {
  description = "CIDR block for the public subnet"
  type        = string
}

variable "availability_zone" {
  description = "Availability zone for the public subnet"
  type        = string
}

variable "eks_module_version" {
  description = "Version of the EKS module"
  type        = string
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "workers_min_count" {
  description = "Minimum count of worker nodes"
  type        = number
}

variable "workers_max_count" {
  description = "Maximum count of worker nodes"
  type        = number
}

variable "workers_instance_type" {
  description = "Instance type for worker nodes"
  type        = string
}
