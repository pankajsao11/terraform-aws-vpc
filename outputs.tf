output "ec2-id" {
  description = "The id of the EC2 instance"
  value       = try(aws_instance.dev-ec2.id, null)
}

output "ec2-arn" {
  description = "The ARN of the EC2 instance"
  value       = try(aws_instance.dev-ec2.arn, null)
}

output "instance-state" {
  description = "State of the Instance"
  value       = try(aws_instance.dev-ec2.instance_state, null)
}

output "private_dns" {
  description = "The private DNS name assigned to the instance. Can only be used inside the Amazon EC2, and only available if you've enabled DNS hostnames for your VPC"
  value       = try(aws_instance.dev-ec2.private_dns, null)
}

output "public_dns" {
  description = "The public DNS name assigned to the instance. For EC2-VPC, this is only available if you've enabled DNS hostnames for your VPC"
  value       = try(aws_instance.dev-ec2.public_dns, null)
}

output "private_ip" {
  description = "The private IP address assigned to the instance"
  value = try(
  aws_instance.dev-ec2.private_ip, null)
}

output "ipv6_addresses" {
  description = "The IPv6 address assigned to the instance, if applicable"
  value = try(
  aws_instance.dev-ec2.ipv6_addresses, [])
}

output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block"
  value = try(
  aws_instance.dev-ec2.tags_all, {})
}

output "ami" {
  description = "AMI ID that was used to create the instance"
  value = try(
  aws_instance.dev-ec2.ami, null)
}

output "availability_zone" {
  description = "The availability zone of the created instance"
  value = try(
  aws_instance.dev-ec2.availability_zone, null)
}