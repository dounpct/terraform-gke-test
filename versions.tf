terraform {
  # required_version = "~>0.14"
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "1.13.3"
    }
    google = {
      source  = "hashicorp/google"
      version = "3.52.0"
    }
  }
}

terraform {
  backend "gcs" {
    bucket  = "gcp-dmp-devops-terraform-state"
    prefix  = "jiw-terraform-state/terraform-cluster-01"
  }
}
