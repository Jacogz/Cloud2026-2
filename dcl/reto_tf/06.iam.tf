data "aws_iam_policy_document" "reto-ec2-assume-role" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["ec2.amazonaws.com"]
    }
  }
}

resource "aws_iam_role" "reto-ec2-role" {
  name               = "${var.reto_prefix}-${var.reto_environment}-ec2-role"
  assume_role_policy = data.aws_iam_policy_document.reto-ec2-assume-role.json

  tags = {
    Name        = "${var.reto_prefix}-${var.reto_environment}-ec2-role"
    Project     = var.reto_project
    Environment = var.reto_environment
    Owner       = var.reto_owner_team
    ManagedBy   = var.reto_managed_by
  }
}

data "aws_iam_policy_document" "reto-ec2-s3-access" {
  statement {
    sid     = "ListBucket"
    actions = ["s3:ListBucket", "s3:GetBucketLocation"]
    resources = [
      aws_s3_bucket.reto-bucket.arn
    ]
  }

  statement {
    sid     = "ReadWriteObjects"
    actions = ["s3:GetObject", "s3:PutObject"]
    resources = [
      "${aws_s3_bucket.reto-bucket.arn}/*"
    ]
  }
}

resource "aws_iam_role_policy" "reto-ec2-s3-access" {
  name   = "${var.reto_prefix}-${var.reto_environment}-ec2-s3-access"
  role   = aws_iam_role.reto-ec2-role.id
  policy = data.aws_iam_policy_document.reto-ec2-s3-access.json
}

resource "aws_iam_role_policy_attachment" "reto-ec2-ssm" {
  role       = aws_iam_role.reto-ec2-role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
}

resource "aws_iam_instance_profile" "reto-ec2-instance-profile" {
  name = "${var.reto_prefix}-${var.reto_environment}-ec2-instance-profile"
  role = aws_iam_role.reto-ec2-role.name
}
