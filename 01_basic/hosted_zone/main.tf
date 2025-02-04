# Create student's Route53 hosted zone
resource "aws_route53_zone" "student" {
  name = var.student_subdomain
}

provider "aws" {
  region              = var.region
  allowed_account_ids = [var.account_id]
}
