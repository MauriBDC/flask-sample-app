output "ecr_repository_url" {
  description = "URL do repositório ECR para push de imagens"
  value       = aws_ecr_repository.app.repository_url
}

output "elastic_ip" {
  description = "IP fixo da EC2"
  value       = aws_eip.app.public_ip
}

output "ec2_public_dns" {
  description = "DNS público da instância EC2"
  value       = aws_instance.app.public_dns
}

output "ssh_command" {
  description = "Comando pronto para acessar a EC2 via SSH"
  value       = "ssh -i ~/.ssh/flask-lab-key.pem ec2-user@${aws_eip.app.public_ip}"
}