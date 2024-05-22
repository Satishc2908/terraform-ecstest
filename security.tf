resource "aws_security_group" "ecs_service_sg" {
  name_prefix = "ecs-service-sg"
#  vpc_id      = "vpc-06583a477d8ee932d" # Replace with your VPC ID

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
