resource "aws_security_group" "bastion" {
  name        = "bastion-${var.vpc_name}"
  description = "Allows SSH access to the bastion server"

  vpc_id = "${aws_vpc.default.id}"

  ingress {
      from_port       = 22
      to_port         = 22
      protocol        = "tcp"
      cidr_blocks     = ["1.*.*.*/28"]
      description     = "Office IP"
  }

  ingress {
      from_port       = 2022
      to_port         = 2022
      protocol        = "tcp"
      cidr_blocks     = ["1.*.*.*/28"]
      description     = "Office IP"
  }

  egress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 53
    to_port     = 53
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 53
    to_port     = 53
    protocol    = "udp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 123
    to_port     = 123
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 123
    to_port     = 123
    protocol    = "udp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["10.0.0.0/8"]
  }

  tags {
    Name = "bastion-${var.vpc_name}"
  }
}

# EIP for bastion
resource "aws_eip" "bastion" {
  vpc = true
}