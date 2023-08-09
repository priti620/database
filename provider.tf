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
  region  = "us-west1"
  zone    = "us-west1-a"
  credentials  ="keys.json"
}
