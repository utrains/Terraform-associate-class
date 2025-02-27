# create security group for the ec2 instance
resource "aws_security_group" "webserver_security_group" {
  name        = "sg"
  description = "allow access on ports 80 and 22"
  vpc_id      = aws_vpc.lab_vpc.id

  # allow access on these port 80 and 22 for Server using Dynamic blocks. Values are all defined in the variables.tf file
  # allow access on port 8080 for Jenkins Server
  ingress {
    description = "http proxy access"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # allow access on port 22 ssh connection
  ingress {
    description = "ssh access"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Security group"
  }
}
