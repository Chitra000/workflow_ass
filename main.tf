# Creating two IAM users using count loop 
resource "aws_iam_user" "example-1" {
  count = length(var.user_names)
  name  = var.user_names[count.index]
  tags = {
    Name    = var.user_names[count.index]
    Owner   = var.owner
    Purpose = var.purpose
  }
}
# Creating two EC2 instances using for-each loop 
resource "aws_instance" "example-2" {
  for_each      = var.EC2
  ami           = each.value.ami
  instance_type = each.value.ins_type
  subnet_id     = var.subnet_id
  tags = {
    Name    = each.value.name
    Owner   = var.owner
    Purpose = var.purpose
  }
  volume_tags = {
    Name    = each.value.name
    Owner   = var.owner
    Purpose = var.purpose
  }
}
