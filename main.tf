terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

provider "google" {
  project = "cloud-415519"
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
  
}
resource "google_compute_firewall" "ssh-https-rule" {
  name = "rule-ssh-http"
  network = google_compute_network.vpc_network.name
  allow {
    protocol = "tcp"
    ports = ["22","443"]
  }
  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_instance" "vm_instance" {
  name         = "terraform-instance"
  machine_type = "e2-micro"
  zone         = "europe-west9-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }
  network_interface {
    network = "default"
    access_config {} 
  }
  
  metadata_startup_script = "sudo apt-get update;"
}