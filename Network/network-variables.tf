variable "vpc-network" {
  type        = "string"
  description = "The name of the VPC"
  default     = "demo"
}

variable "cidr" {
  description = "The IP Range in CIDR format Ipv4"
  default     = "10.0.0.0/24"
}

