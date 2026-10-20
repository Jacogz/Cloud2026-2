output "vpc_id" {
  description = "ID of the challenge VPC"
  value       = aws_vpc.reto-vpc.id
}

output "subnet_id" {
  description = "ID of the challenge public subnet"
  value       = aws_subnet.reto-subnet-public-a.id
}

output "security_group_id" {
  description = "ID of the EC2 security group"
  value       = aws_security_group.reto-sg-ec2.id
}

output "iam_role_name" {
  description = "Name of the EC2 IAM role"
  value       = aws_iam_role.reto-ec2-role.name
}

output "iam_instance_profile_name" {
  description = "Name of the EC2 instance profile"
  value       = aws_iam_instance_profile.reto-ec2-instance-profile.name
}

output "s3_bucket_name" {
  description = "Name of the challenge S3 bucket"
  value       = aws_s3_bucket.reto-bucket.bucket
}

output "ec2_instance_id" {
  description = "ID of the challenge EC2 instance"
  value       = aws_instance.reto-ec2.id
}

output "ec2_public_ip" {
  description = "Public IP of the challenge EC2 instance"
  value       = aws_instance.reto-ec2.public_ip
}

output "ssm_connect_command" {
  description = "AWS CLI command to open an SSM session on the instance"
  value       = "aws ssm start-session --target ${aws_instance.reto-ec2.id} --profile ${var.reto_aws_profile} --region ${var.reto_region}"
}
