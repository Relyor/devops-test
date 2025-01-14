### Logs for the ECS service
resource "aws_cloudwatch_log_group" "cb_log_group" {
  name              = "/ecs/${var.container_name}"
  retention_in_days = 30

  tags = {
    Name = "web-log-group"
  }
}

resource "aws_cloudwatch_log_stream" "cb_log_stream" {
  name           = "web-log-stream"
  log_group_name = aws_cloudwatch_log_group.cb_log_group.name
}
