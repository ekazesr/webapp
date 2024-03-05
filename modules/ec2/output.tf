output "public_ip_address" {
    value = aws_instance.nginx_instance.public_ip
  }