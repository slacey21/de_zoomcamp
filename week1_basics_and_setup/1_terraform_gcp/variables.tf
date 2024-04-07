variable "credentials" {
  description = "GCP Service Account Credentials Location"
  default = "./keys/my-creds.json"
}

variable "project" {
  description = "Project Name"
  default = "terraform-demo-419302"
}

variable "region" {
  description = "Project Region"
  default = "us-central1"
}

variable "location" {
  description = "Project location"
  default     = "US"
}

variable "bq_dataset_name" {
  description = "My BigQuery Dataset Name"
  default     = "demo_dataset"
}

variable "gcs_bucket_name" {
  description = "My Storage Bucket Name"
  default     = "terraform-demo-419302-terra-bucket"
}

variable "gcs_storage_class" {
  description = "Bucket Storage Class"
  default     = "STANDARD"
}