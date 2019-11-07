variable "vpc-network" {
  description = "The name of the VPC"
}

variable "vpc-subnet" {
  description = "Name of a subnetwork"
}

variable "cidr" {
  description = "The IP Range in CIDR format Ipv4"
}

variable "vpc-firewall" {
  description = "The name of the firewall for the VPC"
}
