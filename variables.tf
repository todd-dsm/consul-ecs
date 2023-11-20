/*
  Core Infra
*/
variable "region" {
  description = "AWS region for the required AO:"
  type        = string
}

variable "vpc_cidr" {
  description = "User-defined CIDR block for the VPC:"
  type        = string
}

variable "envBuild" {
  description = "Environment; E.G.: stage|prod"
  type        = string
}

variable "project" {
  description = "Separator for cloud projects; E.G.: my-ml-project"
  type        = string
}

variable "resource_name" {
  description = "Common name of all resources within a project; E.G.: $project-$envBuild"
  type        = string
}
