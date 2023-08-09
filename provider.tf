terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.73.2"
    }
  }
}

provider "google" {
  # Configuration options
  project = "anthos-installation"
  region  = "us-central1"
  zone    = "us-central1-a"
  credentials  ="keys.json"
}
