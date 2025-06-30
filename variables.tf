# Région AWS
variable "aws_region" {
  type    = string
  default = "eu-south-1"
}

# Module compute
variable "ami_id" {
  type    = string
}

variable "instance_type" {
  type    = string
}

variable "key_name" {
  type    = string
}

variable "instance_name" {
  type    = string
}

variable "user_data" {
  type        = string
  description = "Script d'installation à exécuter au lancement"
}

variable "public_key_path" {
  type        = string
}

# Module network
variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "subnet_cidr" {
  type    = string
  default = "10.0.1.0/24"
}

variable "az" {
  type    = string
  default = "eu-south-1a"
}
