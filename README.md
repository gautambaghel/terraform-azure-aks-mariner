# Provisioning Azure Kubernetes Service 

This repository showcases how you can create an AKS cluster with the Mariner container host

```bash
$ az config set core.allow_broker=true && az account clear && az login
$ az account set --subscription <subscription_id>
$ az ad sp create-for-rbac --output json | jq -r '. | "appId = \"" + .appId + "\"\npassword = \"" + .password + "\"" ' > infra/aks/terraform.tfvars

$ terraform -chdir=infra/aks/ init -upgrade
$ terraform -chdir=infra/aks/ apply -auto-approve
$ az aks get-credentials --resource-group $(terraform -chdir=infra/aks/ output -raw resource_group_name) --name $(terraform -chdir=infra/aks/ output -raw kubernetes_cluster_name)
```