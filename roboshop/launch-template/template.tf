resource "aws_launch_template" "template" {
  name                          = "roboshop-template"
  image_id                      = "ami-059e6ca6474628ef0"
  instance_market_options {
    market_type                 = "spot"
  }
  instance_type                 = "t3.micro"
  vpc_security_group_ids        = ["sg-0b3cbd1514f3c2f2f"]
}

output "template_id" {
  value                         = aws_launch_template.template.id
}