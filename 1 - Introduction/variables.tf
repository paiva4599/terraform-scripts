variable "region" {
  default = "us-east-1"
}
 
variable "instance_type" {
  default = "t2.micro"
}

variable "key-pair" {
    default = "terraform-key.pem"
}