output "ubuntu_servers_ips" {
  description = "value of the public ip from ubunto servers"
  value       = aws_instance.ubuntu_server[*].public_ip
}

output "windows_server_ip" {
  description = "value of the public ip from windows-server"
  value       = aws_instance.windows_server[*].public_ip
}