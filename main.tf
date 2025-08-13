provider "google" {
  project = var.project_id
  region  = var.region
}

resource "random_id" "bucket_suffix" {
  byte_length = 4
}

resource "google_storage_bucket" "jenkins_bucket" {
  name     = "${var.bucket_name_prefix}-${random_id.bucket_suffix.hex}"
  location = var.region
  force_destroy = true

  uniform_bucket_level_access = true

  versioning {
    enabled = true
  }
}

output "bucket_name" {
  value = google_storage_bucket.jenkins_bucket.name
}
