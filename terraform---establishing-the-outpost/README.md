# Terraform Configuration - Establishing the Outpost

This Terraform configuration establishes an outpost by creating an EKS cluster in AWS using the official EKS Terraform module.

## Files

The Terraform configuration is split into the following files:

- `main.tf`: Contains the main configuration for the EKS cluster setup.
- `variables.tf`: Defines the input variables that can be customized.
- `outputs.tf`: Defines the output variable for the kubeconfig coordinates.
- `README.md`: Provides an explanation of the Terraform configuration.

## Configuration Details

- The EKS cluster is created in the specified AWS region (default: `us-west-2`).
- The cluster name is set as `outpost-cluster` by default, but you can customize it.
- The number of worker nodes in the EKS cluster can be adjusted (default: 1 minimum and 3 maximum).
- The instance type for the worker nodes is set to `t3.medium` by default, but you can modify it.
- The kubeconfig coordinates (outpost coordinates) are outputted, which allow connecting to the EKS cluster.

## Usage

1. Set up your AWS credentials and ensure Terraform is installed.

2. Adjust the variables in `variables.tf` to customize the configuration if needed.

3. Run the following commands in the directory containing this Terraform configuration:

   ```shell
   terraform init
   terraform plan
   terraform apply
