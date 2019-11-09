output "vpc-name" {
  value       = "${google_compute_network.vpc-network.*.name}"
  description = "The names of the VPCs being created."
}

output "vpc-self_links" {
  value       = "${google_compute_network.vpc-network.*.self_link}"
  description = "The self-links of the VPCs being created."
}


output "subnet-names" {
  value       = "${google_compute_subnetwork.vpc-subnet.*.name}"
  description = "The names of the subnets being created"
}

output "subnets_ips" {
  value       = "${google_compute_subnetwork.vpc-subnet.*.ip_cidr_range}"
  description = "The IPs and CIDRs of the subnets being created"
}

output "subnets_self_links" {
  value       = "${google_compute_subnetwork.vpc-subnet.*.self_link}"
  description = "The self-links of subnets being created"
}

output "subnets_regions" {
  value       = "${google_compute_subnetwork.vpc-subnet.*.region}"
  description = "The region where the subnets will be created"
}

output "subnets_private_access" {
  value       = "${google_compute_subnetwork.vpc-subnet.*.private_ip_google_access}"
  description = "Whether the subnets will have access to Google API's without a public IP"
}

output "subnets_flow_logs" {
  value       = "${google_compute_subnetwork.vpc-subnet.*.enable_flow_logs}"
  description = "Whether the subnets will have VPC flow logs enabled"
}

output "subnets_secondary_ranges" {
  value       = "${google_compute_subnetwork.vpc-subnet.*.secondary_ip_range}"
  description = "The secondary ranges associated with these subnets"
}

# output "routes" {
#   value       = "${google_compute_route.route.*.name}"
#   description = "The routes associated with this VPC"
# }

