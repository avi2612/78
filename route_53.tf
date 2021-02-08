resource "aws_route53_record" "route_53_pan" {
  zone_id = "Z08194207A92C08EP73W"
  name    = "${var.unique_id}-pan.avinashsingh.me"
  type    = "A"
  ttl     = "300"
  records = [aws_instance.pan[0].public_ip]
  count   = var.launch_pan == true ? 1 : 0
}

resource "aws_route53_record" "route_53_saas" {
  zone_id = "Z08194207A92C08EP73W"
  name    = "${var.unique_id}-saas.avinashsingh.me"
  type    = "A"
  ttl     = "300"
  records = [aws_instance.saas[0].public_ip]
  count   = var.launch_saas == true ? 1 : 0
}

resource "aws_route53_record" "route_53_nuxt" {
  zone_id = "Z08194207A92C08EP73W"
  name    = "${var.unique_id}-nuxt.avinashsingh.me"
  type    = "A"
  ttl     = "300"
  records = [aws_instance.nuxt[0].public_ip]
  count   = var.launch_nuxt == true ? 1 : 0
}

###########

resource "aws_route53_record" "route_53_www_pan" {
  zone_id = "Z08194207A92C08EP73W"
  name    = "www.${var.unique_id}-pan.avinashsingh.me"
  type    = "A"
  ttl     = "300"
  records = [aws_instance.pan[0].public_ip]
  count   = var.launch_pan == true ? 1 : 0
}

resource "aws_route53_record" "route_53_www_saas" {
  zone_id = "Z08194207A92C08EP73W"
  name    = "www.${var.unique_id}-saas.avinashsingh.me"
  type    = "A"
  ttl     = "300"
  records = [aws_instance.saas[0].public_ip]
  count   = var.launch_saas == true ? 1 : 0
}

resource "aws_route53_record" "route_53_www_nuxt" {
  zone_id = "Z08194207A92C08EP73W"
  name    = "www.${var.unique_id}-nuxt.avinashsingh.me"
  type    = "A"
  ttl     = "300"
  records = [aws_instance.nuxt[0].public_ip]
  count   = var.launch_nuxt == true ? 1 : 0
}
