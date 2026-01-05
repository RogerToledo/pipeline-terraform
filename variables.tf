variable "ubuntu_instance_count" {
  description = "number of ubuntu instances to be created"
  type        = number
  default     = 2
}

variable "windows_instance_count" {
  description = "number of windows instances to be created"
  type        = number
  default     = 1
}

variable "aws_key_pub" {
  description = "value of the public key"
  type        = string
}