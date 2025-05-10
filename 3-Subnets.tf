# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork

# Iowa - US - us-central1
resource "google_compute_subnetwork" "planetrock-prod-main-us" {
  name                     = "planetrock-prod-main-us"
  ip_cidr_range            = "10.35.20.0/24"
  region                   = "us-central1"
  network                  = google_compute_network.planetrock.id
  private_ip_google_access = true
}


resource "google_compute_subnetwork" "planetrock-app-main-us" {
  name                     = "planetrock-app-main-us"
  ip_cidr_range            = "10.35.40.0/24"
  region                   = "us-central1"
  network                  = google_compute_network.planetrock.id
  private_ip_google_access = true
}


#Tokyo - Japan - asia-northeast1
resource "google_compute_subnetwork" "planetrock-prod1-tok" {
  name                     = "planetrock-prod1-tok"
  ip_cidr_range            = "10.35.60.0/24"
  region                   = "asia-northeast1"
  network                  = google_compute_network.planetrock.id
  private_ip_google_access = true
}


resource "google_compute_subnetwork" "planetrock-app1-tok" {
  name                     = "planetrock-prod2-tok"
  ip_cidr_range            = "10.35.80.0/24"
  region                   = "asia-northeast1"
  network                  = google_compute_network.planetrock.id
  private_ip_google_access = true
}


# Taa VPC - Tokyo
resource "google_compute_subnetwork" "taa-prod2-tok2" {
  name                     = "taa-prod-tok3"
  ip_cidr_range            = "10.35.120.0/24"
  region                   = "asia-northeast1"
  network                  = google_compute_network.taa.id
  private_ip_google_access = true
}



resource "google_compute_subnetwork" "taa-app2-tok2" {
  name                     = "taa-app-tok4"
  ip_cidr_range            = "10.35.140.0/24"
  region                   = "asia-northeast1"
  network                  = google_compute_network.taa.id
  private_ip_google_access = true
}


#For Sao Paulo - Brazil - southamerica-east1
resource "google_compute_subnetwork" "saopaulo01" {
  name                     = "saopaulo01"
  ip_cidr_range            = "10.35.160.0/24"
  region                   = "southamerica-east1"
  network                  = google_compute_network.planetrock.id
  private_ip_google_access = true
}


resource "google_compute_subnetwork" "saopaulo02" {
  name                     = "saopaulo02"
  ip_cidr_range            = "10.35.180.0/24"
  region                   = "southamerica-east1"
  network                  = google_compute_network.planetrock.id
  private_ip_google_access = true
}
