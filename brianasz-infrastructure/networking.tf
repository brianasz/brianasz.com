# Create a new domain
resource "digitalocean_domain" "brianasz" {
  name = "${var.domain_name}"
  ip_address = "${digitalocean_droplet.brianasz_blog.ipv4_address}"
}

# Create a CNAME record
resource "digitalocean_record" "CNAME-www" {
  domain = "${digitalocean_domain.brianasz.name}"
  type = "${var.record_www_type}"
  name = "${var.record_www_name}"
  value = "${var.record_www_value}"
}

# Create a CNAME record
resource "digitalocean_record" "CNAME-myblog" {
  domain = "${digitalocean_domain.brianasz.name}"
  type = "${var.record_myblog_type}"
  name = "${var.record_myblog_name}"
  value = "${var.record_myblog_value}"
}
