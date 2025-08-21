#Creating AWS EC2 Instance
resource "aws_instance" "name" {
  instance_type = "t2.micro"
  ami = "ami-015cbce10f839bd0c"
  subnet_id = "subnet-0927c1fcfe88a715a"
  count = var.count_index_of_ec2s
 depends_on = [ aws_security_group.aws_instances_regular_sg ]
  tags = {
    Name = var.ec2_instances_tag_names[count.index]
  }
  vpc_security_group_ids = [aws_security_group.aws_instances_regular_sg.id]
}