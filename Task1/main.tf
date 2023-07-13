# Define provider and AWS region
provider "aws" {
  region = var.aws_region
  version = var.aws_version
}

# Create a VPC with a single public subnet
resource "aws_vpc" "outpost_vpc" {
  cidr_block = var.vpc_cidr_block

  tags = {
    Name = "outpost-vpc"
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.outpost_vpc.id
  cidr_block              = var.subnet_cidr_block
  availability_zone       = var.availability_zone
  map_public_ip_on_launch = true

  tags = {
    Name = "public-subnet"
  }
}

# Set up an EKS cluster in the VPC using the official EKS Terraform module
module "eks_cluster" {
  source                 = "terraform-aws-modules/eks/aws"
  version                = var.eks_module_version
  cluster_name           = var.cluster_name
  vpc_id                 = aws_vpc.outpost_vpc.id
  subnet_ids             = [aws_subnet.public_subnet.id]
  workers_min_count      = var.workers_min_count
  workers_max_count      = var.workers_max_count
  workers_instance_type  = var.workers_instance_type
}

# Implement security measures for the EKS cluster (e.g., security groups, IAM roles, etc.)

resource "aws_security_group" "eks_cluster_sg" {
  vpc_id = aws_vpc.outpost_vpc.id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "eks-cluster-sg"
  }
}

