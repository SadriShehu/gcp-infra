terraform {
  backend "gcs" {
    bucket = "terraform-state-fourth-walker-185309"
    prefix = "terraform/state/gcp-infra/terraform-account"
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">=3.5.0"
    }

    google-beta = {
      source  = "hashicorp/google-beta"
      version = ">=3.5.0"
    }
  }

  required_version = ">= 1.1.0"
}
