resource "aws_instance" "my_ec2" {
  ami           = var.ami_id
  instance_type = var.ins_type
  key_name      = "Mac_Login"
  # user_data              = file("apache-install.sh")
  vpc_security_group_ids = [aws_security_group.http.id, aws_security_group.ssh.id]
  tags = {
    "Name" = "my_ec2"
  }
}
