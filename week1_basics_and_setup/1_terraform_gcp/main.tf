terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.23.0"
    }
  }
}

provider "google" {
  credentials = "./keys/my-creds.json"
  project = "terraform-demo-419302"
  region  = "us-central1"
}

resource "google_storage_bucket" "auto-expire" {
  name          = "terraform-demo-419302-terra-bucket"
  location      = "US"
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}