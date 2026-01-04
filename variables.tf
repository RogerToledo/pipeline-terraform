variable "ubuntu_instance_count" {
  description = "number of ubunto instances to be created"
  type        = number
  default     = 3
}

variable "aws_key_pub" {
  description = "value of the public key"
  type        = string
}