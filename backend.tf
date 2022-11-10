terraform {
  experiments = [module_variable_optional_attrs]

  backend "s3" {
    bucket               = "rmd-terraform-remediant-state"
    encrypt              = true
    // path pattern: s3://rmd-terraform-remediant-state/kubernetes-secureone/<workspace-name>/terraform.tfstate
    key                  = "kube-upgrade-test/terraform.tfstate"
    region               = "us-west-2"
  }
}