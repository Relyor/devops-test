resource "aws_security_group" "lb" {
    name        = "web-load-balancer-security-group"
    description = "controls access to the ALB"
    vpc_id      = aws_vpc.ecs_vpc.id

    ingress {
        protocol    = "tcp"
        from_port   = var.port
        to_port     = var.port
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        protocol    = "-1"
        from_port   = 0
        to_port     = 0
        cidr_blocks = ["0.0.0.0/0"]
    }
}

# Traffic to the ECS cluster should only come from the ALB
resource "aws_security_group" "ecs_tasks" {
    name        = "web-ecs-tasks-security-group"
    description = "allow inbound access from the ALB only"
    vpc_id      = aws_vpc.ecs_vpc.id

    ingress {
        protocol        = "tcp"
        from_port       = var.port
        to_port         = var.port
        security_groups = [aws_security_group.lb.id]
    }

    egress {
        protocol    = "-1"
        from_port   = 0
        to_port     = 0
        cidr_blocks = ["0.0.0.0/0"]
    }
}
