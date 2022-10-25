resource "tls_private_key" "instance_key" {
  algorithm = "RSA"
}

resource "aws_key_pair" "instance_key_pair" {
  key_name   = "${var.instance_name}-instance-key"
  public_key = tls_private_key.instance_key.public_key_openssh
}

resource "aws_ssm_parameter" "windows_ec2" {
  depends_on = [aws_instance.windows-server]
  name       = "/Microsoft/Proteomics/${var.project_environment}/${var.instance_name}-password"
  type       = "SecureString"
  value      = rsadecrypt(aws_instance.windows-server.password_data, nonsensitive(tls_private_key.instance_key.private_key_pem))
}

resource "aws_ssm_parameter" "tls_private_key" {
  depends_on = [
    tls_private_key.instance_key
  ]
  name  = "/Microsoft/Proteomics/${var.project_environment}/${var.instance_name}-private-key"
  type  = "SecureString"
  value = nonsensitive(tls_private_key.instance_key.private_key_pem)
}
