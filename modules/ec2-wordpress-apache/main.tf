resource "aws_instance" "wordpress" {

  security_groups = ["${var.instance-sg}"]
  ami           = "ami-76d6f519"
  instance_type = "t2.micro"
  key_name = "damodaran_test"
  subnet_id = "${var.subnet-id}"
  associate_public_ip_address = true
  user_data = "${file("${path.module}/installing-components.sh")}"


  tags {
    Name = "wordpress"
  }
}
