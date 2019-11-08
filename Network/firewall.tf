//Creating Firewall Rules
resource "google_compute_firewall" "default" {
  name    = "${var.vpc-network}-firewall"
  network = "${google_compute_network.vpc-network.self_link}"

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["80", "8080", "1000-2000"]
  }
}
