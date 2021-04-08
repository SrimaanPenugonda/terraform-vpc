//This output file is to pass private and public subnet information to autoscaling grp
//this outputs sits in state file and further asg access the vpc state file and read the subnet information

output "PUBLIC_SUBNETS" {
  value = aws_subnet.public-subnets.*.id
}

output "PRIVATE_SUBNETS" {
  value = aws_subnet.private-subnets.*.id
}