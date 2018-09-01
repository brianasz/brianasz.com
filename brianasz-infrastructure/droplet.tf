# Create a new droplet running Centos in San Francisco region

resource "digitalocean_droplet" "brianasz_blog" {
  image  = "${var.droplet_image}"
  name   = "${var.droplet_name}"
  region = "${var.droplet_region}"
  size   = "${var.droplet_size}"
#  ssk_keys = [
#    "${var.digitalocean_ssh_fingerprint}"
#  ]
}

# Create a new domain
resource "digitalocean_domain" "brianasz" {
  name = "${var.domain_name}"
  ip_address = "${digitalocean_droplet.brianasz_blog.ipv4_address}"
}

# Create a CNAME record
resource "digitalocean_record" "CNAME-www" {
  domain = "${digitalocean_domain.brianasz.name}"
  type = "${var.record_type}"
  name = "${var.record_name}"
  value = "${var.record_value}"
}
