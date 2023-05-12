# Provisioning Azure Kubernetes Service 

This repository showcases how you can create an AKS cluster with the Mariner container host

```bash
$ az config set core.allow_broker=true && az account clear && az login
$ az account set --subscription <subscription_id>
$ az ad sp create-for-rbac --output json | jq -r '. | "appId = \"" + .appId + "\"\npassword = \"" + .password + "\"" ' > terraform.auto.tfvars

$ terraform init -upgrade
$ terraform apply -auto-approve
$ az aks get-credentials --resource-group $(terraform output -raw resource_group_name) --name $(terraform output -raw kubernetes_cluster_name)
```

### If you're using Terraform Cloud to deploy this, please follow the Dynamic Credentials tutorial for [more information here](https://developer.hashicorp.com/terraform/tutorials/cloud/dynamic-credentials)