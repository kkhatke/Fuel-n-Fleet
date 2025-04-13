variable "credentials" {
  description = "Path to the key file"
  default     = "Path to credentials JSON file"
}
variable "project_id" {
  description = "GCP Project ID"
  default     = "dtc-de-project-454809"
}
variable "region" {
  description = "GCP Region"
  default     = "us-central1"
}
variable "location" {
  description = "Project location"
  default     = "US"
}
variable "gcs_bucket_name" {
  description = "Storage bucket name"
  default     = "fuel_n_fleet_bucket"
}
variable "gcs_bucket_class" {
  description = "Storage bucket class"
  default     = "STANDARD"
}
variable "bq_dataset_name" {
  description = "BigQuery dataset name"
  default     = "fuel_n_fleet"
}
