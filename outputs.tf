output "ubuntu_servers_ips" {
  description = "value of the public ip from ubunto servers"
  value       = aws_instance.ubuntu_serve[*].public_ip
}

output "windows_server_ip" {
  description = "value of the public ip from server04"
  value       = aws_instance.windows-server.public_ip
}