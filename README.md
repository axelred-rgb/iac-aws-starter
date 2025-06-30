# 🌐 Platform Project – Infrastructure AWS avec Terraform

Ce projet constitue une base modulaire pour déployer une infrastructure Cloud sur AWS avec **Terraform**, évolutive vers une véritable **plateforme Cloud & DevOps**.

---

## 🚀 Objectifs

- Construire une infrastructure cloud sécurisée et scalable
- Déployer automatiquement des services (web, bases de données, monitoring)
- Intégrer les bonnes pratiques DevOps (CI/CD, monitoring, sécurité)
- Utiliser des outils modernes : Terraform, Docker, GitHub Actions, Prometheus, etc.

---

## 🔧 Infrastructure actuelle (v1)

Déploiement simple avec :

- ✅ 1 VPC personnalisé
- ✅ 1 sous-réseau public
- ✅ 1 Internet Gateway
- ✅ 1 table de routage
- ✅ 1 instance EC2 Ubuntu (`t3.micro`)
- ✅ Installation automatique de **NGINX**

---

## 🗂️ Fichiers Terraform

- `provider.tf` : configuration AWS (région `eu-south-1`)
- `main.tf` : ressources principales (VPC, Subnet, EC2, NGINX)
- `output.tf` : affichage IP publique
- `variables.tf` : variables réutilisables (à venir)
- `modules/` : dossier pour structurer en modules réutilisables (à venir)

---

## ⚙️ Instructions de déploiement

```bash
terraform init       # Initialisation
terraform validate   # Validation
terraform plan       # Prévisualisation
terraform apply      # Déploiement
