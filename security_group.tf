resource "aws_security_group" "aws-windows-sg" {
  name        = "windows-sg"
  description = "Allow incoming connections"
  vpc_id      = aws_vpc.vpc.id

  ingress {
    from_port   = 3389
    to_port     = 3389
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] #tfsec:ignore:aws-vpc-no-public-ingress-sgr
    description = "Allow incoming RDP connections"
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"] #tfsec:ignore:aws-vpc-no-public-egress-sgr
    description = "Allow all outgoing traffic"
  }
  tags = {
    Name = "windows-sg"
  }
}
