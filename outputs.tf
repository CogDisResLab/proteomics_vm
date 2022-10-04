output "dns" {
  value = aws_instance.windows-server.public_dns
}

output "password" {
  value = aws_instance.windows-server.password_data
}
