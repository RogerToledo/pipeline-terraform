output "vm_ip" {
  description = "value of the public ip"
  value       = aws_instance.vm.public_ip
}