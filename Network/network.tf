//Creating a VPC in GCP
resource "google_compute_network" "vpc-network" {
  name                    = "${var.vpc-network}-vpc"
  auto_create_subnetworks = true
}
