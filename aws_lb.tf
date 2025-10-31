provider "aws" {
  region = "us-east-1"
}

resource "aws_lb" "fail_case" {
  name               = "fail-alb"
  internal           = false
  load_balancer_type = "application"
  subnets            = ["subnet-0123456789abcdef0", "subnet-0fedcba9876543210"]

  idle_timeout       = 400

tags = {
    Compliance = "NON_COMPLIANT"
    Reason     = "No ingestion cap configured"
    X-CS-Account-Id = "547045142213"
    X-CS-Region = "us-east-1"
    Owner = "sneha"
    Reason = "template"
    Environment = "test"
  }

}
