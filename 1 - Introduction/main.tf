data "aws_ami" "amazon_linux" {
  most_recent = true
 
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
 
  owners = ["137112412989"] # AWS ID para Amazon Linux
}

resource "aws_instance" "example" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = var.instance_type
  key_name      = "terraform-key"
 
  tags = {
    Name = "Terraform-Instance"
  }
}