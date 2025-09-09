provider "google" {
  project = "curso-iac-devops"    
  region  = "us-central1"
}

resource "google_storage_bucket" "meu_bucket" {
  name     = "bucket-tfstate-iac-edu"
  location = "US"
}

resource "random_id" "sufixo" {
  byte_length = 4
}

