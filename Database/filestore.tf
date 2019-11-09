resource "google_filestore_instance" "filestore" {
  name = "${var.filestore-name}-filestore"
  zone = "${var.zone}"
  tier = "${var.tier}"

  file_shares {
    capacity_gb = "${var.capacity-gb}"
    name        = "${var.fileshare-name}"
  }

  networks {
    network = "${data.google_compute_network.my-network.name}"
    modes   = ["${var.mode}"]
  }
}
