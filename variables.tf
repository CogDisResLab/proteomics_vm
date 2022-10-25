variable "ssh_public_key" {
  description = "The public key"
  type        = string
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDGmjXN687etMjiqSEfSmryD+lNlU8ae8KeLzP4NhiW9+jUrrXx1fqBee/zLfxRNLJDnWFRBcMEAcGxZL32YzjntONPbI9o/hDjV3EXMuZDHRU3eP0E2mHsbTlaZEpXN6z2YfOVmkXldeuxOfK0HwErQngHvaeXPDvUOixtGgssnCIN1yVeiKDG1SNkdHKFMhI/Fu9CYua+FkP/rQZxs8zhG01nQH1w0jziQFbW0rhHP58mG7C6BetPlwaZNig5ngVe7Dws5oU62QAKmEwK8+ButOgLbVPj4oT/KB9KNggl6GQQrDbWiXFjOfiE+0Z9wbeYuNUpnflSn9n63au6Y48WnsJ/OCIRpHXdZqnb5HNYgmmo9aRUOa2RlG9csTHtseAAdxOAmW7+lKzkkxnwQ8lsEK1ttJm+FDRqRO/QWUURkhe6kG+/4qA+s7zF9sbrb23lO2jRpMETsiIPCPZMZn7Y0mHd6rQiFB/GCWh0eUJ3Nel+pod1ls4wghoHPk1i/I8LKCc1kVUTYpe7vn8Ax+/PLGPa0EZBtNg9kvk3QVXrMasaposadkeASKjXIneFfE2AvP+zBQwvbiWdztnt+uDdBebprIECGAT+v4LvXIP7gFWL2ij/ly9kSCKIPuzcTGbbLp7v6wZ5Tf/m2GwvGi2H6yU1L+il/+7AyZGuFTaKvw== github-action@githubusercontent.com"
}

variable "project_environment" {
  description = "Name of the project Environment."
  type        = string
  default     = "Staging"
}

variable "aws_az" {
  type        = string
  description = "Availability zone to deploy the instance to"
  default     = "us-east-2b"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR for the VPC for the instance"
  default     = "10.1.64.0/18"
}

variable "public_subnet_cidr" {
  type        = string
  description = "CIDR for the public subnet in the VPC"
  default     = "10.1.64.0/24"
}

variable "associate_public_ip_address" {
  type        = bool
  description = "Associate a public IP address to the EC2 instance"
  default     = true
}

variable "root_volume_size" {
  type        = number
  description = "Volumen size of root volumen of Windows Server"
  default     = "30"
}

variable "data_volume_size" {
  type        = number
  description = "Volumen size of data volumen of Windows Server"
  default     = "50"
}

variable "root_volume_type" {
  type        = string
  description = "Volumen type of root volumen of Windows Server."
  default     = "gp3"
}
variable "data_volume_type" {
  type        = string
  description = "Volumen type of data volumen of Windows Server."
  default     = "gp3"
}

variable "instance_name" {
  type        = string
  description = "EC2 instance name for Windows Server"
  default     = "proteomics01"
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type for Windows Server"
  default     = "t3a.large"
}
