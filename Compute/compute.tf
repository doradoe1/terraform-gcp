resource "google_compute_instance" "compute-instance" {
  name         = "${var.compute-name}-compute"
  machine_type = "${var.machine-type}"
  zone         = "${var.compute-zone}"

  project = "${var.project}"
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
  # metadata_startup_script = "${file("./startup.sh")}"
  allow_stopping_for_update = "true"
}

