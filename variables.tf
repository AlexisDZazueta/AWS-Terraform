variable "aws_profile" {}
variable "aws_region" {}
variable "vpc_cidr" {}
variable "localip" {}
variable "domain_name" {}
variable "db_instance_class" {}
variable "dbname" {}
variable "dbuser" {}
variable "dbpassword" {}
data "aws_availability_zones" "availables" {}
variable "cidrs" {
  type = "map"
}
