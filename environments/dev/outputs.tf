output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.test_medium.id
}

output "instance_public_ip" {
  description = "Public IP of the EC2 instance"
  value       = aws_instance.test_medium.public_ip
}