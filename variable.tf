variable "ami" {
  default = "ami-0395649fbe870727e"
}
variable "instance_type" {
  default = "t2.micro"
}
variable "security_groups" {
  default = ["myownsg"]
}
variable "key_pair" {
  default = "myownkp"
}

variable "tags" {
  default = "Prod"
}
