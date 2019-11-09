variable "collection" {
  type        = "string"
  description = "The collection being indexed."
  default     = ""
}

variable "field-name" {
  type        = "string"
  description = "The name of the field"
  default     = "name"
}

variable "field-order" {
  type        = "string"
  description = "Idicates that this field supports ordering by the specified order or comparing using =, <, <=, >, >=."
  default     = "ASCENDING"
}

variable "index-database" {
  type        = "string"
  description = "The Firestore database id. Defaults to default."
  default     = "default"
}
