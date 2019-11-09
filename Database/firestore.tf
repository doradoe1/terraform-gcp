resource "google_firestore_index" "demo-index" {
  project = "${var.project}"

  collection = "${var.collection}"

  database = "${var.index-database}"

  fields {
    field_path = "${var.field-name}"
    order      = "${var.field-order}"
  }
}
