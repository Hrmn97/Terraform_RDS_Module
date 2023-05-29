variable "engine_name" {
  description = "Enter the DB engine"
  type        = string
  default     = "mysql"
}
variable "db_name" {
  description = "Enter the database name to be created"
  type        = string
  default     = "mysql"
}
variable "user_name" {
  description = "Enter the username for DB"
  type        = string
  default     = "test"
}
variable "password" {
  description = "Enter the username for DB"
  type        = string
  default     = "test"
}
variable "instance_class" {
  description = "Enter the instance class"
  type        = string
  default     = "db.t2.micro"
}
variable "skip_final_snapshot" {
  description = "Enter the snapshot id"
  type        = bool
  default     = true
}
variable "multi_az_deployment" {
  description = "Enable or disable multi-az deployment"
  type        = bool
  default     = false
}
variable "publicly_accessible" {
  description = "Whether public access needed"
  type        = bool
  default     = false
}
variable "delete_automated_backup" {
  type    = bool
  default = true
}
variable "access_key" {
  type = string
}
variable "secret_key" {
  type = string
}
