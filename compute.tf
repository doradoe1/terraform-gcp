resource "google_compute_instance" "compute-instance" {
  name         = "${var.compute-name}"
    machine_type = "${var.machine-type}"
  zone         = "${var.compute-zone}"

  project = "${var.region}"
  boot_disk {
    initialize_params {
      image = "${var.compute-image}"
    }
  }

  // Local SSD disk
  scratch_disk {
  }
  network_interface {
    network = "${google_compute_network.vpc-network.self_link}"
  }
  allow_stopping_for_update = "true"
}

