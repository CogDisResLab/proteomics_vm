resource "tls_private_key" "instance_key" {
  algorithm = "RSA"
}

resource "aws_key_pair" "instance_key_pair" {
  key_name   = "windows-instance-key"
  public_key = tls_private_key.instance_key.public_key_openssh
}

resource "aws_ssm_parameter" "windows_ec2" {
  depends_on = [aws_instance.windows-server]
  name       = "/Microsoft/AD/${var.project_environment}/ec2-win-password"
  type       = "SecureString"
  value      = rsadecrypt(aws_instance.windows-server.password_data, nonsensitive(tls_private_key.instance_key.private_key_pem))
}
