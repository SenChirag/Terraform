output "aws_instance_public_ips" {
  value = [for instance in aws_instance.myserver : instance.public_ip]
}