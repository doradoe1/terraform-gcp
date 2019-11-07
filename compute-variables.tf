variable "compute-name" {
  type = "string"
  description = "The name of the compute instance"
}

variable "machine-type" {
  type = "string"
  description = "The type of hardware. Refer to https://cloud.google.com/compute/docs/machine-types for more information"
  default     = "n1-standard-1"
}

variable "compute-zone" {
  type = "string"
  description = "The avaliability zone where the instance should run. Refer to https://cloud.google.com/compute/docs/regions-zones/ for more information"
  default     = "us-central1-a"
}

variable "compute-image" {
  type = "string"
  description = "The operating system images to create boot disks for the instance. Refer to https://cloud.google.com/compute/docs/images for more information"
  default     = "debian-cloud/debian-9"
}

