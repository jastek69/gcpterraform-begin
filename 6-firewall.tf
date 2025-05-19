# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall

#Planetrock VPC
resource "google_compute_firewall" "allow-kiya" {
  name    = "allow-kiya"
  network = google_compute_network.planetrock.name

  allow {
    protocol      = "tcp"
    ports         = ["22"]
  }

  allow {
    protocol      = "tcp"
    ports         = ["80"]
    
  }
source_ranges = ["0.0.0.0/0"]
}


resource "google_compute_firewall" "allow-web" {
  name    = "allow-web"
  network = google_compute_network.planetrock.name

  allow {
    protocol      = "tcp"
    ports         = ["80", "443"]
  }

source_ranges = ["0.0.0.0/0"]
}


#ICMP 
resource "google_compute_firewall" "allow-ping" {
  name    = "allow-ping"
  network = google_compute_network.planetrock.name

  allow {
    protocol      = "icmp"
  
  }

source_ranges = ["0.0.0.0/0"]
}


#Database: MySQL 3306, PostgreSQL 5432, Oracle 1521
# https://www.iana.org/assignments/service-names-port-numbers/service-names-port-numbers.xhtml?search=mysql
resource "google_compute_firewall" "allow-db" {
  name    = "allow-db"
  network = google_compute_network.planetrock.name

  allow {
    protocol      = "tcp"
    ports         = ["3306", "5432", "1521"]
  }

  
source_ranges = ["0.0.0.0/0"]
}



#RDP on port 3389
resource "google_compute_firewall" "allow-rdp" {
  name    = "allow-rdp"
  network = google_compute_network.planetrock.name

  allow {
    protocol      = "tcp"
    ports         = ["3389"]
  }

  
source_ranges = ["0.0.0.0/0"]
}



#DNS
resource "google_compute_firewall" "allow-dns" {
  name    = "allow-dns"
  network = google_compute_network.planetrock.name

  allow {
    protocol      = "udp"
    ports         = ["53"]
  }
  allow {
    protocol      = "tcp"
    ports         = ["53"]
  }
source_ranges = ["0.0.0.0/0"]
}



/************************************************************/
#Taa VPC - allow traffic from Planetrock VPC

resource "google_compute_firewall" "allow-kiya2-taa" {
  name    = "allow-kiya2-taa"
  network = google_compute_network.taa.name

  allow {
    protocol      = "tcp"
    ports         = ["22"]
  }

  allow {
    protocol      = "tcp"
    ports         = ["80"]
    
  }   
source_ranges = ["10.35.40.0/24"]
}

#Database: MySQL 3306, PostgreSQL 5432, Oracle 1521
# https://www.iana.org/assignments/service-names-port-numbers/service-names-port-numbers.xhtml?search=mysql
resource "google_compute_firewall" "allow-db-taa" {
  name    = "allow-db-taa"
  network = google_compute_network.taa.name

  allow {
    protocol      = "tcp"
    ports         = ["3306", "5432", "1521"]
  }

  
source_ranges = ["10.35.40.0/24"]
}


resource "google_compute_firewall" "allow-web-taa" {
  name    = "allow-web-taa"
  network = google_compute_network.taa.name

  allow {
    protocol      = "tcp"
    ports         = ["80", "443"]
  }

source_ranges = ["10.35.40.0/24"]
}
