# Flask Sample App - DevOps Lab

Este projeto utiliza uma aplicação Flask simples como base para estudos de práticas DevOps.

A aplicação original continha apenas o código da API e os testes automatizados. A partir dela foram adicionados componentes de infraestrutura, automação e entrega contínua para simular um fluxo mais próximo do encontrado em ambientes reais.

## O que foi implementado

* Containerização da aplicação com Docker
* Execução da aplicação com Gunicorn
* Orquestração local utilizando Docker Compose
* Testes automatizados com Pytest e Coverage
* Pipeline CI/CD utilizando GitHub Actions
* Build e publicação automática de imagens no Amazon ECR
* Provisionamento da infraestrutura com Terraform
* Deploy automatizado em uma instância EC2
* Monitoramento básico utilizando CloudWatch

## Arquitetura

```text
Developer
    │
    ▼
GitHub
    │
    ▼
GitHub Actions
    │
    ├── Executa testes
    ├── Build da imagem Docker
    └── Push para Amazon ECR
                    │
                    ▼
                Amazon ECR
                    │
                    ▼
                Amazon EC2
                    │
                    ▼
              Flask + Gunicorn
                    │
                    ▼
               CloudWatch
```

## Estrutura do projeto

```text
.
├── app/
├── tests/
├── infra/
│   ├── main.tf
│   ├── providers.tf
│   ├── variables.tf
│   └── outputs.tf
├── .github/
│   └── workflows/
├── Dockerfile
├── docker-compose.yml
└── run.py
```

## Pipeline de Deploy

A cada push para a branch `main`:

1. Os testes são executados.
2. A imagem Docker é criada.
3. A imagem é enviada para o Amazon ECR.
4. A instância EC2 atualiza a aplicação utilizando a nova imagem.
5. Logs e métricas podem ser acompanhados pelo CloudWatch.

## Tecnologias Utilizadas

* Python
* Flask
* Pytest
* Docker
* Docker Compose
* GitHub Actions
* Terraform
* AWS EC2
* AWS ECR
* AWS IAM
* AWS CloudWatch

## Objetivo

O objetivo deste projeto não é demonstrar o desenvolvimento da aplicação Flask em si, mas utilizar uma aplicação existente como laboratório para estudar containerização, infraestrutura como código, integração contínua e entrega contínua utilizando ferramentas amplamente empregadas no mercado.
