variable "region" {
  type = "string"
  default = "eu-west-1"
}

variable "env" {
  description = "SDLC Environment"
  type = "string"
  default = "dev"
}

variable "project" {
  description = "Project name"
  type = "string"
  default = "area51"
}

variable "public_subnets" {
  description = "A list of public subnets inside the VPC"
  type        = list(string)
  default     = []
}

variable "private_subnets" {
  description = "A list of private subnets inside the VPC"
  type        = list(string)
  default     = []
}

variable "enable_dns_support" {
  description = "VPC DNS Support"
  type = bool
  default = true
}

variable "enable_dns_hostnames" {
  description = "VPC DNS Hostnames"
  type = bool
  default = true
}

variable "instance_tenancy" {
  description = "Instance Tenancy"
  type = string
  default = "default"
}