provider "google" {
  version     = "~> 2.13"
  credentials = "${file("account.json")}"
  project     = "${var.project}"
  region      = "${var.region}"
}

variable "project" {
  description = "The name of the project where the credentials come from"
  default     = "wu-test1"
}

variable "region" {
  description = "The region for the resources"
  default     = "us-central1"
}

