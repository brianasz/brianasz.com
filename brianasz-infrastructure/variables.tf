# Provider variables
variable "digitalocean_token" {}
variable "digitalocean_ssh_fingerprint" {}
variable "digitalocean_pub_key" {}
variable "digitalocean_priv_key" {}

# Droplet variables
variable "droplet_image" {}
variable "droplet_name" {}
variable "droplet_region" {}
variable "droplet_size" {}

# Domain variables
variable "domain_name" {}

# Domain records
variable "record_type" {}
variable "record_name" {}
variable "record_value" {}
