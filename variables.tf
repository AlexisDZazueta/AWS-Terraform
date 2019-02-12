variable "aws_region" {}
variable "aws_profile" {}
data "aws_availability_zone" "availables" {}
variable "vpc_cidr" {}
variable "localip" {}
variable "cidrs" {
  type = "map"
}
variable "domain_name" {}
