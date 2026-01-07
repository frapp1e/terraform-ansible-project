variable "aws_region" {
  default = "eu-west-1"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "ami_id" {
  default = "ami-074197bd895f7745e" # Amazon Linux 2 (EU-WEST-1)
}

variable "key_name" {
  default = "terraform-ansible-key" # el Key Pair que creamos
}

