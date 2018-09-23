# Create a new droplet running Centos in San Francisco region

resource "digitalocean_droplet" "brianasz_blog" {
  image  = "${var.droplet_image}"
  name   = "${var.droplet_name}"
  region = "${var.droplet_region}"
  size   = "${var.droplet_size}"
  ssh_keys = [
    "${var.digitalocean_ssh_fingerprint}"
  ]
}
