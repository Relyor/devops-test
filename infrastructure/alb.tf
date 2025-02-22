resource "aws_alb" "this" {
  name            = "web-load-balancer"
  subnets         = aws_subnet.public.*.id
  security_groups = [aws_security_group.lb.id]
}

resource "aws_alb_target_group" "this" {
  name        = "web-target-group"
  port        = 80
  protocol    = "HTTP"
  vpc_id      = aws_vpc.ecs_vpc.id
  target_type = "ip"

  health_check {
    healthy_threshold   = "3"
    interval            = "30"
    protocol            = "HTTP"
    matcher             = "200"
    timeout             = "3"
    path                = var.health_check_path
    unhealthy_threshold = "2"
  }
}

# Redirect all traffic from the ALB to the target group
resource "aws_alb_listener" "this" {
  load_balancer_arn = aws_alb.this.id
  port              = var.port
  protocol          = "HTTP"

  default_action {
    target_group_arn = aws_alb_target_group.this.id
    type             = "forward"
  }
}
