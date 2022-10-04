output "dns" {
  value = aws_eip.windows-eip.public_dns
}

output "ip" {
  value = aws_eip.windows-eip.public_ip
}
