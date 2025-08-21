# Instances name based on count index
variable "ec2_instances_tag_names" {
  default = ["First_EC2","Second_EC2","Third_EC2","Fourth_EC2"]
}

# Variable for value of the count index of EC2 Instances
variable "count_index_of_ec2s" {
  default = 1
}

# Allowed cidr_ipv4 range from ingress in aws_security_group.aws_instances_regular_sg
variable "allowed_ingress_ipv4_cidr_main" {
  default = "0.0.0.0/0"
}