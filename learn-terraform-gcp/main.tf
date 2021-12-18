# config GCP project
provider "google" {
  credentials = file("/home/vagrant/learning-terraform/tf-lab-335100-c1fb7b86cd18.json")
  project     = "${var.project_id}"
  region      = "${var.region}"
}

# create VM
resource "google_compute_instance" "webserver" {
  name         = "${var.name}"
  machine_type = "${var.machine_type}"
  zone         = "${var.zone}"
  boot_disk {
    initialize_params {
      image = "${var.image}"
    }
  }


# instalar apache2
metadata_startup_script = "sudo apt update; sudo apt install apache2 -y; echo 'body count is in the house broder (MMA)' > /var/www/html/index.html"

# Enable network
  network_interface {
    network = "default"
    access_config {

    }
  }
}

# Create firewall rules
resource "google_compute_firewall" "webfirewall" {
  name    = "${var.firewall_name}"
  network = "default"
  allow {
    protocol = "tcp"
    ports = "${var.ports}"
  }
}
