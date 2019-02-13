variable "aws_profile" {}
variable "aws_region" {}
variable "vpc_cidr" {}
variable "localip" {}
variable "domain_name" {}
variable "db_instance_class" {}
variable "dbname" {}
variable "dbuser" {}
variable "dbpassword" {}
variable "dev_instance_type" {}
variable "dev_ami" {}
variable "public_key_path" {}
variable "key_name" {}
variable "elb_healthy_threashold" {}
variable "elb_unhealthy_threashold" {}
variable "elb_timeout" {}
variable "elb_interval" {}
variable "asg_max" {}
variable "asg_min" {}
variable "asg_grace" {}
variable "asg_hct" {}
variable "asg_cap" {}
variable "lc_instance_type" {}
data "aws_availability_zones" "availables" {}
variable "cidrs" {
  type = "map"
}
