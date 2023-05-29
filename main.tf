resource "aws_db_instance" "test-db" {
  allocated_storage        = 10
  db_name                  = var.db_name
  engine                   = var.engine_name
  instance_class           = var.instance_class
  username                 = var.user_name
  password                 = var.password
  skip_final_snapshot      = var.skip_final_snapshot
  multi_az                 = var.multi_az_deployment
  publicly_accessible      = var.publicly_accessible
  vpc_security_group_ids   = [data.aws_security_group.security-grp.id]
  db_subnet_group_name     = aws_db_subnet_group.db_sub_group.id
  delete_automated_backups = var.delete_automated_backup
}

resource "aws_db_subnet_group" "db_sub_group" {
  name       = "main"
  subnet_ids = [data.aws_subnet.available_db_subnet.id]
  tags = {
    name = "Database-subnet"
  }
}


