resource "aws_db_subnet_group" "workon" {
  name       = "workon"
  subnet_ids = module.vpc.public_subnets

  tags = {
    Name = "workon"
  }
}

resource "aws_db_instance" workon" {
  identifier             = "workon"
  db_name                = "dbcovidtesting"
  username               = "root"
  password               = var.db_password
  instance_class         = "db.t3.micro"
  allocated_storage      = 10
  engine                 = "mysql"
  engine_version         = "5.7"
  db_subnet_group_name   = aws_db_subnet_group.workon.name
  vpc_security_group_ids = [aws_security_group.rds.id]
  parameter_group_name   = "default.mysql5.7"
  publicly_accessible    = true
  skip_final_snapshot    = true
}