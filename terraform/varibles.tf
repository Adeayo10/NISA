variable "region" {
  description = "AWS region"
  default     = "us-west-2"
  
}

variable "ami" {
  description = "AMI to use for the instance"
  default     = "ami-07c5ecd8498c59db5"
  
}

variable "instance_type" {
  description = "Instance type"
  default     = "t2.micro"
  
}

variable "key_name" {
  description = "SSH key name"
  default     = "webserver"
  
}

variable "aws_access_key" {
  description = "AWS secret access key"  
}

variable "aws_secret_key" {
  description = "AWS access key ID"
  
}