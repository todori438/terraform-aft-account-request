module "account_request_sre_perf" {
  source = "../terraform-aws-control_tower_account_factory/sources/aft-customizations-repos/aft-account-request/terraform/modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "tivanov+perf@quickbase.com"       # Replace with your account email
    AccountName               = "sre-lab"               # Replace with your account name
    ManagedOrganizationalUnit = "ou-3836-qczvh7y7"  # Replace with your OU name and ID
    SSOUserEmail              = "tivanov@quickbase.com"         # Replace with the SSO user email
    SSOUserFirstName          = "Todor"                    # Replace with the SSO user's first name
    SSOUserLastName           = "Ivanov"                     # Replace with the SSO user's last name
  }

  account_tags = {
    "ABC:Owner"       = "tivanov@quickbase.com"
    "ABC:Division"    = "LABS"
    "ABC:Environment" = "Perf"
    "ABC:CostCenter"  = "qbcore"
    "ABC:Vended"      = "true"
    "ABC:Project"     = "SRE"
  }

  change_management_parameters = {
    change_requested_by = "AWS Control Tower Lab"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform (AFT)"
  }

#   custom_fields = {
#     custom1 = "a"
#     custom2 = "b"
#   }

  account_customizations_name = "SANDBOX"  # Set this to either PRODUCTION or SANDBOX
}
