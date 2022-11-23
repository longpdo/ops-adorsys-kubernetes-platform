provider "helm" {
  kubernetes {
    config_path = ".kubeconfig"
  }
}

provider "aws" {
  region  = "eu-central-1"
  profile = ""

  default_tags {
    tags = {
      project = "ops-k8s-bootstrap"
      Owner   = "ops"
      Name    = "ops-k8s-bootstrap"
    }
  }
}

provider "kubectl" {
  load_config_file = true
  config_path = ".kubeconfig"
}

provider "kubernetes" {
  config_path = ".kubeconfig"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.40.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = "2.7.1"
    }
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = "1.14.0"
    }
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "2.16.0"
    }
    random = {
      source = "hashicorp/random"
      version = "3.4.3"
    }
  }
}