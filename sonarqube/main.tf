resource "aws_instance" "test" {
  ami           = "ami-0a7cf821b91bcccbc"
  instance_type = "t2.medium"
  key_name  = "terraform_keys"
  vpc_security_group_ids = "aws_security_group.allow_tls.id"
  user_data = "${file("sonarqube.sh")}"
  tags = {
    Name = "Sonarqube"
  }
}
