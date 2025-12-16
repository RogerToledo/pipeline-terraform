output "Server01_ip" {
  description = "value of the public ip from server01"
  value       = aws_instance.Server01.public_ip
}

output "Server02_ip" {
  description = "value of the public ip from server02"
  value       = aws_instance.Server02.public_ip
}

output "Server03_ip" {
  description = "value of the public ip from server03"
  value       = aws_instance.Server03.public_ip
}