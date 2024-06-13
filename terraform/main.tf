module "account_request_sre_perf" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "tivanov+perf@quickbase.com"
    AccountName               = "sre-lab-perf"
    ManagedOrganizationalUnit = "ou-3836-qczvh7y7"
    SSOUserEmail              = "tivanov@quickbase.com"
    SSOUserFirstName          = "Todor"
    SSOUserLastName           = "Ivanov"
  }

  account_tags = {
    "ABC:Owner"       = "tivanov@quickbase.com"
    "ABC:Division"    = "LABS"
    "ABC:Environment" = "Perf"
    "ABC:CostCenter"  = "SRE"
    "ABC:Vended"      = "true"
    "ABC:Project"     = "SRE"
  }

  change_management_parameters = {
    change_requested_by = "AWS Control Tower Lab"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform (AFT)"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sanbox"
}
