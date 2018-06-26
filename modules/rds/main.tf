resource "aws_db_subnet_group" "default" {
  name       = "subnet-group-rds"
  subnet_ids = ["${var.subnet-ids}"]

  tags {
    Name = "My DB subnet group"
  }
}

resource "aws_db_instance" "default" {
        engine            = "mysql"
        engine_version    = "5.7.19"
        instance_class    = "db.t2.micro"
        allocated_storage = 5
        storage_encrypted = false
        name              = "demodb"
        username          = "admin"
        password          = "password123"
        port              = "3306"
        vpc_security_group_ids = ["${var.security-group-id}"]
        db_subnet_group_name   = "${aws_db_subnet_group.default.name}"
        final_snapshot_identifier = "demodb"

}
