# 📊 FinOps no GCP com Komiser – Monitoramento de Custos Cloud

## 📌 Objetivo
Este projeto visa implementar uma solução **FinOps** no **Google Cloud Platform (GCP)** utilizando o **Komiser**, uma ferramenta **open-source** para análise e otimização de custos em ambientes **multi-cloud**. O objetivo é fornecer **visibilidade total** sobre os custos da infraestrutura, identificar desperdícios e promover **governança financeira** eficiente.

## 🔍 Solução
A solução implementa o **Komiser** dentro de um **cluster Kubernetes (GKE)**, permitindo:
- 📈 **Análise detalhada dos custos** no GCP.
- 📉 **Identificação de desperdícios e otimização de recursos**.
- ⚙️ **Monitoramento de ativos cloud** em tempo real.
- 🔐 **Segurança e compliance** com controle de permissões IAM.
- 📊 **Dashboard web interativo** para facilitar a gestão de custos.

## 🚀 Tecnologias Utilizadas
- **Google Cloud Platform (GCP)**
- **Kubernetes (GKE)**
- **Terraform** (Infraestrutura como Código)
- **GitHub Actions** (CI/CD para deploy automatizado)
- **Komiser** (Ferramenta FinOps)
- **Helm** (Opcional, para gerenciamento do deploy)

---

## 🏗️ Arquitetura da Solução
```plaintext
┌─────────────────────────────────────────────────────┐
│                     GitHub Actions                  │
│       (CI/CD para Deploy Automático no GKE)        │
└─────────────────────────────────────────────────────┘
                     │
                     ▼
┌─────────────────────────────────────────────────────┐
│                     Terraform                      │
│     (Provisionamento do Cluster Kubernetes GKE)    │
└─────────────────────────────────────────────────────┘
                     │
                     ▼
┌─────────────────────────────────────────────────────┐
│                     GKE (Kubernetes)               │
│  - Deployment do Komiser via YAML ou Helm Chart    │
│  - Service para exposição do dashboard (UI)        │
└─────────────────────────────────────────────────────┘
                     │
                     ▼
┌─────────────────────────────────────────────────────┐
│                     Komiser                         │
│  - Monitoramento de Custos Cloud                    │
│  - Dashboard para visualização de FinOps           │
└─────────────────────────────────────────────────────┘
