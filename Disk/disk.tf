resource "google_compute_disk" "disk" {
  name  = "${var.disk-name}-disk"
  type  = "${var.disk-type}"
  zone  = "${var.compute-zone}"
  image = "${var.disk-image}"
  labels = {
    environment = "dev"
  }
  physical_block_size_bytes = "${var.pbsb}"
}

