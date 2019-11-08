//Creating a Subnet off the VPC
resource "google_compute_subnetwork" "vpc-subnet" {
  name          = "${var.vpc-network}-subnet"
  ip_cidr_range = "${var.cidr}"
  region        = "${var.region}"
  network       = "${google_compute_network.vpc-network.self_link}"
}