# Credentials are read in through terraform.tfvars (not in git)
variable "access_key" {}
variable "secret_key" {}

# AWS Region
variable "region" {
  default = "ap-southeast-2"
}

# The AMI image to use (Debian 8)
variable "aws_amis" {
  default = {
    "ap-southeast-1" = "ami-4e370d1c"
    "ap-southeast-2" = "ami-e7c5bddd"
    "eu-west-1"      = "ami-971a65e0"
    "us-east-1"      = "ami-896d85e2"
    "us-west-1"      = "ami-21cf2565"
    "us-west-2"      = "ami-ed8eb7dd"
  }
}

# Size of the instance
variable "instance_type" {
  default = "t1.micro"
}

# SSH key to deploy
variable "key_name" {
  description = "Key pair to use"
  default     = "example"
}

# Whitelist your IP for SSH access here
variable "ip_whitelist" {
  description = "Whitelisted IP for SSH access"
  default     = "0.0.0.0/0"
}
