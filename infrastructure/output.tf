output "alb_hostname" {
  value = "${aws_alb.this.dns_name}:4000"
}

output "ecs_service" {
  value = "${aws_ecs_cluster.this.name}"
}

output "ecs_cluster" {
  value = "${aws_ecs_service.this.name}"
}