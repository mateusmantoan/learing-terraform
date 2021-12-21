variable "project_id" {
  type    = string
  default = "tf-lab-335100"
}

variable "region" {
  type = string
  default = "us-central1"
}

variable "name" {
  type = string
  default = "apache-body-count"
}

variable "machine_type" {
  type = string
  default = "f1-micro"
}

variable "zone" {
  type = string
  default = "us-central1-c"
}

variable "image" {
  type = string
  default = "debian-cloud/debian-10"
}

variable "firewall_name" {
  type = string
  default = "webserver-firewall"
}

variable "ports" {
  type = list
  default = ["80"]
}

variable "source_address" {
  type = list
  default = ["0.0.0.0/0"]
}
