# --- root/variables.tf ---

variable "domain_name" {
  type        = string
  description = "Website domain name"
}

variable "bucket_name" {
  type        = string
  description = "Name of bucket minus prefix"
}

variable "common_tags" {
  description = "Tags for ease of use"
}

