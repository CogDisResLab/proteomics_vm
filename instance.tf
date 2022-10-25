# Create EC2 Instance
resource "aws_instance" "windows-server" {
  ami                         = data.aws_ami.windows-2022.id
  instance_type               = var.instance_type
  subnet_id                   = aws_subnet.public-subnet.id
  vpc_security_group_ids      = [aws_security_group.aws-windows-sg.id]
  source_dest_check           = false
  key_name                    = aws_key_pair.instance_key_pair.key_name
  get_password_data           = true
  associate_public_ip_address = var.associate_public_ip_address

  metadata_options {
    http_endpoint = "enabled"
    http_tokens   = "required"
  }

  # root disk
  root_block_device {
    volume_size           = var.root_volume_size
    volume_type           = var.root_volume_type
    delete_on_termination = true
    encrypted             = true
  }
  # extra disk
  ebs_block_device {
    device_name           = "/dev/xvda"
    volume_size           = var.data_volume_size
    volume_type           = var.data_volume_type
    encrypted             = true
    delete_on_termination = true
  }

  tags = {
    Name = "windows-server-vm"
  }
}

# resource "aws_key_pair" "windows_key" {
#   key_name   = "windows_key"
#   public_key = tls_private_key.instance_key.public_key_openssh
# }

# Create Elastic IP for the EC2 instance
resource "aws_eip" "windows-eip" {
  vpc = true
  tags = {
    Name = "windows-eip"
  }
}
# Associate Elastic IP to Windows Server
resource "aws_eip_association" "windows-eip-association" {
  instance_id   = aws_instance.windows-server.id
  allocation_id = aws_eip.windows-eip.id
}
