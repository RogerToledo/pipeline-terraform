resource "aws_key_pair" "key" {
  key_name   = "aws-key-pipeline"
  public_key = var.aws_key_pub
}

resource "aws_instance" "vm" {
  ami                         = "ami-04d88e4b4e0a5db46"
  instance_type               = "t2.large"
  key_name                    = aws_key_pair.key.key_name
  subnet_id                   = data.terraform_remote_state.vpc.outputs.subnet_id
  vpc_security_group_ids      = [data.terraform_remote_state.vpc.outputs.security_group_id]
  associate_public_ip_address = true

  tags = {
    Name        = "vm-terraform"
    Environment = "Dev"
    Owner       = "Roger Toledo"
    ManagedBy   = "Terraform"
  }
}