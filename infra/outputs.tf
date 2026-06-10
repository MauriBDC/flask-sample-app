output "ecr_repository_url" {
  description = "URL do repositório ECR para push de imagens"
  value       = aws_ecr_repository.app.repository_url
}

output "ec2_public_ip" {
  description = "IP público da instância EC2"
  value       = aws_instance.app.public_ip
}

output "ec2_public_dns" {
  description = "DNS público da instância EC2"
  value       = aws_instance.app.public_dns
}

output "ssh_command" {
  description = "Comando pronto para acessar a EC2 via SSH"
  value       = "ssh -i ~/.ssh/flask-lab-key.pem ec2-user@${aws_instance.app.public_ip}"
}