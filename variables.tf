variable "instance_type" {
  description = "Instance type for the instance running the IDP Server"
  type        = string
  default     = "t3a.large"
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
