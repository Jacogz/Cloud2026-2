resource "aws_instance" "reto-ec2" {
  ami                    = var.reto_ami_id
  instance_type          = var.reto_instance_type
  subnet_id              = aws_subnet.reto-subnet-public-a.id
  vpc_security_group_ids = [aws_security_group.reto-sg-ec2.id]
  iam_instance_profile   = aws_iam_instance_profile.reto-ec2-instance-profile.name

  user_data = <<-EOF
    #!/bin/bash
    echo "reto-terraform functional check at $(date -u +%Y-%m-%dT%H:%M:%SZ)" > /tmp/reto-check.txt
    aws s3 cp /tmp/reto-check.txt s3://${aws_s3_bucket.reto-bucket.bucket}/functional-check.txt --region ${var.reto_region}
  EOF

  tags = {
    Name        = "${var.reto_prefix}-${var.reto_environment}-ec2"
    Project     = var.reto_project
    Environment = var.reto_environment
    Owner       = var.reto_owner_team
    ManagedBy   = var.reto_managed_by
  }
}
