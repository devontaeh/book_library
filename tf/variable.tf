variable "region" {
  type        = string
  description = "Region of EC2 instance"
  default     = "eu-central-1"
}

variable "vpc_cidr" {
  type        = string
  description = "Cidr block of VPC"
  default     = "10.0.0.0/16"
}

variable "public_sb_cidr" {
  type        = string
  description = "Cidr block of flaskapp public subnet"
  default     = "10.0.0.0/24"
}

variable "key_name" {
  type        = string
  description = "SSH key pair name"
  default     = "ssh_key"
}

variable "count_flaskapp" {
  type        = number
  description = "Count of flaskapp instance"
  default     = 1
}

variable "flaskapp_instance_type" {
  type        = string
  description = "Instance type of Flaskapp"
  default     = "t2.micro"
}

