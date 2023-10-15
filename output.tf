output "public-DNS" {
  value       = aws_instance.example-2.*.EC2-1.public_dns
  description = "The public DNS of the EC2-1 instance."
}

output "public-ip" {
  value       = [for ip in aws_instance.example-2 : ip.public_ip]
  description = "The public IP address of the both EC2 instances."
}
