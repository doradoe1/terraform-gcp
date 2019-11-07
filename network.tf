//Creating a VPC in GCP
resource "google_compute_network" "vpc-network" {
  name                    = "${var.vpc-network}"
  auto_create_subnetworks = false
}

//Creating a Subnet off the VPC
resource "google_compute_subnetwork" "vpc-subnet" {
  name          = "${var.vpc-subnet}"
  ip_cidr_range = "${var.cidr}"
  region        = "${var.region}"
  network       = "${google_compute_network.vpc-network.self_link}"
}

//Creating Firewall Rules
resource "google_compute_firewall" "default" {
  name    = "${var.vpc-firewall}"
  network = "${google_compute_network.vpc-network.self_link}"

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["80", "8080", "1000-2000"]
  }
}

