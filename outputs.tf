output "dns" {
  value = aws_eip.windows-eip.public_dns
}

output "ip" {
  value = aws_eip.windows-eip.public_ip
}

output "private_key" {
  value     = tls_private_key.instance_key.private_key_pem
  sensitive = true
}

output "win_password" {
  value     = aws_instance.windows-server.password_data
  sensitive = true
}

output "win_password_ssm" {
  value     = aws_ssm_parameter.windows_ec2.value
  sensitive = true
}
