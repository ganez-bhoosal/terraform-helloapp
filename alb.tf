resource "aws_lb" "default" {
  name               = "terraform-springboot-helloapp"
  internal           = false
  load_balancer_type = "application"
  security_groups    = ["${aws_security_group.default_lb.id}"]
  subnets            = ["subnet-145ff259", "subnet-43f3ed1f"]

  enable_deletion_protection = true
  tags = {
    Environment = "dev"
  }
}
