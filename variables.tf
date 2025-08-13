variable "project_id" {
  description = "tranquil-marker-468804-h3"
  type        = string
}

variable "region" {
  description = "GCP region"
  default     = "us-central1"
}

variable "bucket_name_prefix" {
  description = "nsd+"
  type        = string
}
