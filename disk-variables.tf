variable "disk-name" {
  type = "string"
  description = "The name name of the disk"
}

variable "disk-type" {
  description = "The type of disk, Refer to https://cloud.google.com/compute/docs/disks/performance for more information."
  default     = "pd-ssd"
}

variable "disk-image" {
  type = "string"
  description = "The disk's image.Refer to https://cloud.google.com/compute/docs/images for more information."
  default     = "debian-8-jessie-v20170523"
}

variable "pbsb" {
  type = "string"
  default = "4096"
}

