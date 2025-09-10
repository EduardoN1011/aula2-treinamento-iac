terraform {
  backend "gcs" {
    bucket = "bucket-tfstate-iac-edu"
    prefix = "terraform/state"
  }
}
