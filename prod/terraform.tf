terraform {
  backend "gcs" {
    bucket      = "nord-k8s"
    prefix      = "terraform/state"
  }
}
