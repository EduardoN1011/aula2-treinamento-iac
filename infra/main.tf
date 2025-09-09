provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_storage_bucket" "html_bucket" {
  name          = var.html_bucket_name
  location      = var.region
  project       = var.project_id
  force_destroy = true

  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }

  uniform_bucket_level_access = true
}

resource "google_storage_bucket_iam_member" "public_read_html" {
  bucket = google_storage_bucket.html_bucket.name
  role   = "roles/storage.objectViewer"
  member = "allUsers"
}