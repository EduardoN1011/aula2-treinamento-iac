output "html_bucket_url" {
  value = "https://storage.googleapis.com/${google_storage_bucket.html_bucket.name}/index.html"
}