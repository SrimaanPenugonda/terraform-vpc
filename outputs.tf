//This output file is to pass private and public subnet information to autoscaling grp
//this outputs sits in state file and further asg module access the vpc state file
//and read the subnet information

output "PUBLIC_SUBNETS" {
  value = aws_subnet.public-subnets.*.id
}

output "PRIVATE_SUBNETS" {
  value = aws_subnet.private-subnets.*.id
}

// require for ALB module
output "VPC_ID" {
  value = aws_vpc.main.id
}

output "VPC_CIDR" {
  value = aws_vpc.main.cidr_block
}

output "DEFAULT_VPC_ID" {
  value = var.DEFAULT_VPC_ID
}

output "DEFAULT_VPC_CIDR" {
  value = var.DEFAULT_VPC_CIDR
}

output "ZONE_NAME" {
  value = data.aws_route53_zone.zone.name
}

output "ZONE_ID" {
  value = data.aws_route53_zone.zone.id
}