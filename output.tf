output "subnet_data" {
  value = data.aws_subnet.available_db_subnet.id
}
output "rds_address" {
  value = aws_db_instance.test-db.endpoint
}
