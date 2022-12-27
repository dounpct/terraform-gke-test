variable "project_id" {
  description = "project id"
}

variable "region" {
  description = "region"
}

variable "zone" {
  description = "zone"
}

variable "vpc_name" {
  description = "vpc_name"
}

variable "vpc_subnet_name" {
  description = "vpc_subnet_name"
}

variable "vpc_subnet_range" {
  description = "vpc_subnet_range"
}

provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

# VPC
resource "google_compute_network" "vpc" {
  name                    = var.vpc_name
  auto_create_subnetworks = "false"
}

# Subnet
resource "google_compute_subnetwork" "subnet" {
  name          = var.vpc_subnet_name
  region          = var.region
  network       = google_compute_network.vpc.name
  ip_cidr_range = var.vpc_subnet_range
}