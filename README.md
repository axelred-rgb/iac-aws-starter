# Infrastructure AWS avec Terraform

Ce projet déploie une infrastructure simple sur AWS avec :
- 1 VPC
- 1 Subnet public
- 1 Internet Gateway
- 1 Route table
- 1 Instance EC2 Ubuntu (t3.micro)
- NGINX installé automatiquement

## Fichiers Terraform

- `main.tf` : ressources principales (VPC, EC2, NGINX)
- `provider.tf` : configuration AWS (région `eu-south-1`)
- `output.tf` : affichage de l’IP publique

## Instructions

```bash
terraform init
terraform apply
