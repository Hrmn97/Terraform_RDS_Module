data "aws_vpc" "selected" {
  filter {
    name   = "tag:Name"
    values = ["selected"]
  }
}
data "aws_subnet" "available_db_subnet" {
  vpc_id = data.aws_vpc.selected.id
  filter {
    name   = "tag:name"
    values = ["Database-subnet"]
  }
}
data "aws_availability_zones" "available" {
  state = "available"
}
data "aws_security_group" "security-grp" {
  filter {
    name   = "tag:Name"
    values = ["security-grp"]
  }
}
