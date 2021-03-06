resource "aws_instance" "sample" {
  ami           = "ami-059e6ca6474628ef0"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
// calling security group by id
}
// we have to tell the provider
provider "aws" {
  region        = "us-east-1"
}


output "public_ip" {
  value = aws_instance.sample.public_ip
}

// Adding security group and attaching to ec2 instance
resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow TLS inbound traffic"

  ingress {
    description      = "SSH"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_ssh"
  }
}