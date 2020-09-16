variable "env" {
  description = "environment for deploy"
  type        = "string"
}

variable "vpc_cidr" {
  description = "VPC cidr range"
  type        = "string"
}

variable "public_subnet_b_cidr" {
  description = "The cidr range for public subnet"
  type        = "string"
}

variable "public_subnet_c_cidr" {
  description = "The cidr range for public subnet"
  type        = "string"
}

variable "private_subnet_b_cidr" {
  description = "The cidr range for private subnet"
  type        = "string"
}

variable "private_subnet_c_cidr" {
  description = "The cidr range for private subnet"
  type        = "string"
}

variable "db_subnet_b_cidr" {
  description = "The cidr range for db subnet"
  type        = "string"
}

variable "db_subnet_c_cidr" {
  description = "The cidr range for db subnet"
  type        = "string"
}

variable "username" {
  description = "RDSusername"
}

variable "password" {
  description = "RDSpassword"
}

variable "instance_class" {
  description = "RDS instance class "
}

variable "multi_az" {
  description = "Create a replica in different zone "
}

variable "allocated_storage" {
  description = "allocated storage"
}

variable "skip_final_snapshot" {
  description = "Creates a snapshot"
}
