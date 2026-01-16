############################################
# VARIABLES - CORE
############################################
variable "subscriptionid" {
  description = "Subscription ID where resources are deployed (used by ARM parameters)."
  type        = string
}

variable "rsg_name" {
  description = "Resource Group name where ADF is deployed."
  type        = string
}

variable "location" {
  description = "Azure region for resources."
  type        = string
}

variable "adf_name" {
  description = "Azure Data Factory name."
  type        = string
}

variable "inherit" {
  description = "If true, merge RG tags with local tags."
  type        = bool
  default     = false
}

############################################
# TAGS (gobierno)
############################################
variable "entity" {
  type        = string
  default     = null
  description = "Tag: entity."
}

variable "environment" {
  type        = string
  default     = null
  description = "Tag: environment."
}

variable "app_name" {
  type        = string
  default     = null
  description = "Tag: app_name."
}

variable "cost_center" {
  type        = string
  default     = null
  description = "Tag: cost_center."
}

variable "tracking_code" {
  type        = string
  default     = null
  description = "Tag: tracking_code."
}

variable "custom_tags" {
  description = "Extra custom tags to merge."
  type        = map(string)
  default     = {}
}

variable "optional_tags" {
  description = "Optional tags to merge."
  type        = map(string)
  default     = {}
}

############################################
# ADF - NETWORK
############################################
variable "adf_vnet_enabled" {
  description = "Enable Managed Virtual Network for ADF."
  type        = bool
  default     = false
}

variable "adf_public_network_access_enabled" {
  description = "Enable public network access for ADF."
  type        = bool
  default     = true
}

############################################
# CMK (Key Vault + Key + UAI)
############################################
variable "key_exist" {
  description = "If true, key already exists in Key Vault (so module won't create it)."
  type        = bool
  default     = false
}

variable "key_custom_enabled" {
  description = "If true, enable CMK integration."
  type        = bool
  default     = false
}

variable "akv_name" {
  description = "Key Vault name (required when CMK enabled)."
  type        = string
  default     = null
}

variable "key_name" {
  description = "Key Vault Key name (required when CMK enabled)."
  type        = string
  default     = null
}

variable "uai_name" {
  description = "User Assigned Identity name used for CMK."
  type        = string
  default     = null
}

variable "identity_list" {
  description = "Additional user-assigned identity IDs to attach to ADF."
  type        = list(string)
  default     = []
}

############################################
# GITHUB CONFIG (ADF repo integration)
############################################
variable "enable_github" {
  description = "Enable ADF GitHub configuration."
  type        = bool
  default     = false
}

variable "account_name" {
  type        = string
  default     = null
  description = "GitHub account name (org/user)."
}

variable "branch_name" {
  type        = string
  default     = null
  description = "Git branch name."
}

variable "git_url" {
  type        = string
  default     = null
  description = "Git URL (e.g. https://github.com)."
}

variable "repository_name" {
  type        = string
  default     = null
  description = "Repository name."
}

variable "root_folder" {
  type        = string
  default     = "/"
  description = "Root folder in repo."
}

############################################
# LOG ANALYTICS + DIAGNOSTICS + ARM ANALYTICS
############################################
variable "analytics_diagnostic_monitor_enabled" {
  description = "If true, enable diagnostic settings to Log Analytics."
  type        = bool
  default     = false
}

variable "lwk_name" {
  description = "Log Analytics Workspace name (when enabled)."
  type        = string
  default     = null
}

variable "lwk_rsg_name" {
  description = "Resource Group of the Log Analytics Workspace."
  type        = string
  default     = null
}

variable "analytics_diagnostic_monitor_name" {
  description = "Diagnostic setting name."
  type        = string
  default     = "adf-diagnostics"
}

variable "template_adanalytics_name" {
  description = "Name for ARM template deployment for ADF Analytics solution."
  type        = string
  default     = "adf-analytics-solution"
}
