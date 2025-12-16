resource "aws_key_pair" "key" {
  key_name   = "aws-key-pipeline"
  public_key = var.aws_key_pub
}

resource "aws_instance" "Server01" {
  ami                         = "ami-0ecb62995f68bb549"
  instance_type               = "t3.micro"
  key_name                    = aws_key_pair.key.key_name
  subnet_id                   = data.aws_subnet.dio_subnet.id
  vpc_security_group_ids      = [data.aws_security_group.dio_sg.id]
  associate_public_ip_address = true

  tags = {
    Name        = "Server01 - Ubuntu"
    Environment = "Dev"
    OS          = "Ubuntu"
  }
}

resource "aws_instance" "Server02" {
  ami                         = "ami-0ecb62995f68bb549"
  instance_type               = "t3.micro"
  key_name                    = aws_key_pair.key.key_name
  subnet_id                   = data.aws_subnet.dio_subnet.id
  vpc_security_group_ids      = [data.aws_security_group.dio_sg.id]
  associate_public_ip_address = true

  tags = {
    Name        = "Server02 - Ubuntu"
    Environment = "Dev"
    OS          = "Ubuntu"
  }
}

resource "aws_instance" "Server03" {
  ami                         = "ami-0b4bc1e90f30ca1ec"
  instance_type               = "t3.micro"
  key_name                    = aws_key_pair.key.key_name
  subnet_id                   = data.aws_subnet.dio_subnet.id
  vpc_security_group_ids      = [data.aws_security_group.dio_sg.id]
  associate_public_ip_address = true

  tags = {
    Name        = "Server03 - Windows"
    Environment = "Dev"
    OS          = "Windows"
  }
}