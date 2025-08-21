resource "aws_security_group" "aws_instances_regular_sg" {
  name = "Regular-SG"
  description = "Regular SG managed by Terraform"
}
resource "aws_vpc_security_group_ingress_rule" "allow_http" {
  security_group_id = aws_security_group.aws_instances_regular_sg.id
  cidr_ipv4 = "0.0.0.0/0"
  from_port = 80
  ip_protocol = "tcp"
  to_port = 80
}
resource "aws_vpc_security_group_ingress_rule" "allow_https" {
  security_group_id = aws_security_group.aws_instances_regular_sg.id
  cidr_ipv4 = "0.0.0.0/0"
  from_port = 443
  ip_protocol = "tcp"
  to_port = 443
}
resource "aws_vpc_security_group_egress_rule" "allow_all_egress" {
  security_group_id = aws_security_group.aws_instances_regular_sg.id
  cidr_ipv4 = "0.0.0.0/0"
  ip_protocol = "-1"
}