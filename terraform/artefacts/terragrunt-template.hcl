# Access the Terraform, Terraform Provider Registry and Terragrunt docs:
# >> [Terraform Official](https://www.terraform.io/).
# >> [Terraform Providers API Official](https://registry.terraform.io/browse/providers).
# >> [Terraform Language Docs](https://developer.hashicorp.com/terraform/language).
# >> [Terragrunt Official](https://terragrunt.gruntwork.io/).
# >> [Tflint Tool Official](https://github.com/terraform-linters/tflint).
# >> [Checkov Tool Official](https://github.com/bridgecrewio/checkov).
# >> [Infracost Tool Official](https://github.com/infracost/infracost).

#########################################
# Include Block
#########################################

# The include block allows you to include another Terragrunt configuration file,
# typically the root configuration, to inherit its settings.

include {
  path = find_in_parent_folders()
}

#########################################
# Terraform Source
#########################################

# The terraform block specifies the source of the Terraform module you want to use.
# This can be a local path, a Git repository, or a module from the Terraform Registry.

terraform {
  source = "../../modules/my-module"

  extra_arguments "common_vars" {
    commands = get_terraform_commands_that_need_vars()

    // or...

    commands = [
      "apply",
      "plan",
      "import",
      "push",
      "refresh"
    ]
    arguments = [
      "-var-file=${get_terragrunt_dir()}/../common.tfvars",
      "-var-file=./environment.tfvars"
    ]
  }

  random = {
    source = "hashicorp/random"
    version = "3.6.2"
  }
}

#########################################
# Remote State Configuration
#########################################

# The remote_state block configures the remote state backend.
# This example uses AWS S3 for remote state storage and DynamoDB for state locking.

remote_state {
  backend = "s3"
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite"
  }
  config = {
    bucket         = "my-terraform-state"
    key            = "${path_relative_to_include()}/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock-table"

    skip_bucket_versioning         = true # use only if the object store does not support versioning
    skip_bucket_ssencryption       = true # use only if non-encrypted Terraform State is required and/or the object store does not support server-side encryption
    skip_bucket_root_access        = true # use only if the AWS account root user should not have access to the remote state bucket for some reason
    skip_bucket_enforced_tls       = true # use only if you need to access the S3 bucket without TLS being enforced
    skip_credentials_validation    = true # skip validation of AWS credentials, useful when is used S3 compatible object store different from AWS
    enable_lock_table_ssencryption = true # use only if non-encrypted DynamoDB Lock Table for the Terraform State is required and/or the NoSQL database service does not support server-side encryption
    accesslogging_bucket_name      = <string> # use only if you need server access logging to be enabled for your terraform state S3 bucket. Provide a <string> value representing the name of the target bucket to be used for logs output.
    accesslogging_target_prefix    = <string> # use only if you want to set a specific prefix for your terraform state S3 bucket access logs when Server Access Logging is enabled. Provide a <string> value representing the TargetPrefix to be used for the logs output objects. If set to empty <string>, then TargetPrefix will be set to empty <string>. If attribute is not provided at all, then TargetPrefix will be set to default value `TFStateLogs/`.

    shared_credentials_file     = "/path/to/credentials/file"
    skip_metadata_api_check     = true
    force_path_style            = true
  }
}

remote_state {
  backend = "azurerm"
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
  config = {
    resource_group_name  = "my-resource-group"
    storage_account_name = "my-storage-account"
    container_name       = "tfstates"
    key                  = "${path_relative_to_include()}/terraform.tfstate"
  }
}

remote_state {
    backend       = "gcs" 
    generate = {
      path        = "backend.tf"
      if_exists   = "overwrite_terragrunt"
    }
    config = {
      bucket      = "tf-state-prod"
      prefix      = "terraform/state"
    }
  }

#########################################
# Dependency Blocks
#########################################

# The dependency block allows you to define dependencies on other Terragrunt configurations.
# This ensures that dependent configurations are applied in the correct order.

dependency "vpc" {
  config_path = "../vpc"
}

dependency "subnet" {
  config_path = "../subnet"
}

#########################################
# Inputs
#########################################

# The inputs block allows you to pass variables to the Terraform module.
# These variables can be defined in the module's variables.tf file.

inputs = {
  vpc_id      = dependency.vpc.outputs.vpc_id
  subnet_id   = dependency.subnet.outputs.subnet_id
  bucket_name = "example-bucket"
  acl         = "private"
}

#########################################
# Generate Blocks
#########################################

# The generate block allows you to generate Terraform files dynamically.
# This is useful for creating dynamic configurations based on environment or other factors.

generate "provider" {
  path      = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<EOF

provider "aws" {
  region = "us-east-1"
}

provider "azurerm" {
  features {}
  skip_provider_registration = true
}

provider "azuread" {
  features {}
}

provider "random" {}

EOF
}

generate "commond-variables" {
  path      = "commond-variables.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<EOF

variable "company" {
  type        = string
  description = "company name"
}
variable "short_company" {
  type        = string
  description = "short subcompany name"
}

variable "subcompany" {
  type        = string
  description = "company name"
}
variable "short_subcompany" {
  type        = string
  description = "short subcompany name"
}

variable "project" {
  type        = string
  description = "project name"
}
variable "short_project" {
  type        = string
  description = "short project name"
}

# file-infrasctrucutre.tfvars

variable "infrastructures" {
  type        = list(string)
  description = "infrastructure names"
}
variable "short_infrastructures" {
  type        = list(string)
  description = "short infrastructure names"
}

variable "infrastructure" {
  type        = string
  description = "infrastructure name"
}
variable "short_infrastructure" {
  type        = string
  description = "short infrastructure name"
}
variable "base_infrastructure" {
  type        = string
  description = "base infrastructure name"
}

variable "cloud_providers" {
  type        = list(string)
  description = "cloud provider names"
}
variable "short_cloud_providers" {
  type        = list(string)
  description = "short cloud provider names"
}

variable "base_environment" {
  type        = string
  description = "base environment name"
}
variable "environments" {
  type        = list(string)
  description = "environment names"
}

variable "ownership" {
  type        = string
  description = "ownership teams"
}

variable "owner" {
  type        = string
  description = "owners (reponsibles) names"
}
variable "owners" {
  type        = list(string)
  description = "owner names"
}
variable "contact_email" {
  type        = string
  description = "contact email"
}
variable "contact_emails" {
  type        = list(string)
  description = "contact email list"
}

# file-environment.tfvars

variable "environment" {
  type        = string
  description = "environment name"
}

variable "region" {
  type        = string
  description = "primary region name"
}
variable "short_region" {
  type        = string
  description = "primary region name"
}

variable "regions" {
  type        = list(string)
  description = "region names"
}
variable "short_regions" {
  type        = list(string)
  description = "region names"
}

EOF
}

generate "locals" {
  path      = "locals.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<EOF
local {
  company = var.company
  subcompany = var.subcompany
  project = var.project
  infrastructure = var.infrastructure
  environment = var.environment
  region = var.region
  ownership = var.ownership
  owner = var.owner
  updated_at = timestamp()
  managed_by = "terraform|terragrunt"

  dir = "${path_relative_to_include()}"
  directory = "${get_terragrunt_dir()}"

  x = 2
  y = 40
  answer = local.x + local.y

  # computed.hcl
  python_version = run_cmd("--terragrunt-quiet", "python3", "--version") 

  parent_computed_value = read_terragrunt_config(find_in_parent_folders("computed.hcl"))
  message = "Python version is ${local.parent_computed_value.computed_value}"

  upyaml = yamldecode(file(find_in_parent_folders("config.yaml")))
  yaml = yamlencode(file("${path.module}/config.yaml"))
  json = jsonencode(file("${path.module}/config.yaml"))

  common_tags = {
    company = var.company
    subcompany = var.subcompany
    project = var.project
    infrastructure = var.infrastructure
    environment = var.environment
    region = var.region
    ownership = var.ownership
    owner = var.owner
    updated_at = timestamp()
    managed_by = "terraform|terragrunt"
  }
}
EOF
}

#########################################
# Skip Blocks
#########################################

# The skip block allows you to conditionally skip certain Terraform commands.
# This is useful for skipping certain operations in specific environments.

skip {
  command = "apply"
  when    = {
    env = "dev"
  }
}

#########################################
# Hooks
#########################################

# The before_hook and after_hook blocks allow you to run custom scripts before and after Terraform commands.
# This is useful for tasks such as environment setup, validation, or cleanup.

before_hook "start_log" {
    commands = ["init", "validate", "fmt", "plan", "output", "apply", "destroy"]
    execute = ["echo", "[TERRAGRUNT] START TERRAFORM ACTION..."]
}

before_hook "format_before" {
    commands = ["plan", "output", "apply", "destroy"]
    execute = ["terragrunt", "fmt"]
}
before_hook "validate_before" {
    commands = ["plan", "output", "apply", "destroy"]
    execute = ["terragrunt", "validate"]
}
before_hook "before_apply" {
  commands = ["apply"]
  execute  = ["./scripts/before_apply.sh"]
}
before_hook "tflint_before_hook" {
  commands     = ["apply", "plan", "destroy"]
  execute      = ["tflint"]
}

error_hook "import_resource" {
  commands  = ["apply", "plan"]
  execute   = ["echo", "Error Hook executed"]
  on_errors = [
    ".*",
  ]
}

after_hook "after_apply" {
  commands = ["apply"]
  execute  = ["./scripts/after_apply.sh"]
}

after_hook "end_log" {
    commands = ["init", "validate", "fmt", "plan", "output", "apply", "destroy"]
    execute = ["echo", "[TERRAGRUNT] END TERRAFORM ACTION..."]
}

#########################################
# Environment Variables
#########################################

# The env block allows you to set environment variables for Terraform commands.
# This is useful for passing sensitive data or configuration settings.

env {
  TF_VAR_db_password = "supersecret"
  AWS_PROFILE        = "my-aws-profile"
}