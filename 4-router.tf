# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router
resource "google_compute_router" "iowarouter" {
  name    = "iowarouter"
  region  = "us-central1"
  network = google_compute_network.planetrock.id
}


resource "google_compute_router" "iowarouterapp01" {
  name    = "iowarouterapp01"
  region  = "us-central1"
  network = google_compute_network.planetrock.id
}


resource "google_compute_router" "tokyorouter" {
  name    = "tokyorouter"
  region  = "asia-northeast1"
  network = google_compute_network.planetrock.id
}


resource "google_compute_router" "tokyorouterapp01" {
  name    = "tokyorouterapp01"
  region  = "asia-northeast1"
  network = google_compute_network.planetrock.id
}
