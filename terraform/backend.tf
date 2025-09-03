terraform {
  backend "s3" {
    bucket         = "terraform-bucket-status"
    key            = "terraform/state/vm-gcp.tfstate"
    region         = "ca-central-1"
    encrypt        = true
  }
}
