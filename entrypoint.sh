#!/bin/bash

init_terraform() {
    terraform init
}

apply_infrastructure() {
    terraform plan -var-file=terraform.tfvars
    terraform apply -var-file=terraform.tfvars -auto-approve
}

destroy_infrastructure() {
    terraform destroy -var-file=terraform.tfvars -auto-approve
}

case "$1" in
    "init")
        init_terraform
        ;;
    "apply")
        apply_infrastructure
        ;;
    "destroy")
        destroy_infrastructure
        ;;
    *)
        echo "Uso: $0 {init|apply|destroy}"
        exit 1
        ;;
esac