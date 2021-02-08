output "pan-server-ip" {
  value = aws_instance.pan[0].public_ip
}

output "saas-server-ip" {
  value = aws_instance.saas[0].public_ip
}

output "nuxt-server-ip" {
  value = aws_instance.nuxt[0].public_ip
}