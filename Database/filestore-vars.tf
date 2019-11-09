variable "filestore-name" {
    type = "string"
  description = "The resource name of the instance."
  default = "demo"
}

variable "zone" {
  type = "string"
  description = "The zone in which the instance will be hosted. Must belong to the project's region"
  default = "us-central1-a"
}

variable "tier" {
  type = "string"
  description = "The service tier of the instance. Accepted values are STANDARD or PREMIUM"
  default = "PREMIUM"
}

variable "fileshare-name" {
  type = "string"
  description = "The name of the fileshare (16 characters or less)"
  default = "demoshare1"
}

variable "capacity-gb" {
  type = "string"
  description = "File share capacity in GiB. This must be at least 1024 GiB for the standard tier, or 2560 GiB for the premium tier."
  default = "2660"
}

variable "mode" {
    type = "string"
    description = " IP versions for which the instance has IP addresses assigned. Accepted values are MODE_IPV4 and MODE_IPV6"
    default = "MODE_IPV4"  
}

data "google_compute_network" "my-network" {
  name = "The network name needed to be linked. Must exists"
  project = "wu-test1"
}

