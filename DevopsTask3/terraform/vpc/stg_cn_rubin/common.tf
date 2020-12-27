resource "aws_security_group" "internal_common" {
  name = "internal_common-${var.vpc_name}"
  description = "commonly used security group for ocf instances"

  vpc_id = "${aws_vpc.default.id}"
  
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["10.0.0.0/8"]
  }

  egress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress { # dns
    from_port = 53          
    to_port = 53
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress { # dns
    from_port = 53
    to_port = 53
    protocol = "udp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress { # ntp 
    from_port = 123
    to_port = 123
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress { # ntp
    from_port = 123
    to_port = 123
    protocol = "udp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}