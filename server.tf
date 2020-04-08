resource "aws_instance" "web" {
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  
  user_data = file("${path.module}/user_data.sh")

  tags = {
    Name = "me"
  }
}