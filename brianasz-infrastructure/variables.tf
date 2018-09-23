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
variable "record_www_type" {}
variable "record_www_name" {}
variable "record_www_value" {}

# Domain records
variable "record_myblog_type" {}
variable "record_myblog_name" {}
variable "record_myblog_value" {}

