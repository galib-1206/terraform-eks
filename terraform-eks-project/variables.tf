# Variables for root module

variable "region" {
  description = "The AWS region to deploy to"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "private_subnets" {
  description = "Private subnets for VPC"
  type        = list(string)
}

variable "public_subnets" {
  description = "Public subnets for VPC"
  type        = list(string)
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "cluster_version" {
  description = "EKS cluster version"
  type        = string
  default     = "1.23"
}

variable "s3_bucket_name" {
  description = "S3 bucket name"
  type        = string
}

variable "sns_topic_name" {
  description = "SNS topic name"
  type        = string
}
