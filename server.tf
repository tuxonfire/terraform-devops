resource "aws_instance" "web" {
  ami           = "ami-0fc61db8544a617ed"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  
  user_data = file("${path.module}/user_data.sh")

  tags = {
    Name = "Eloy Vega"
  }
}