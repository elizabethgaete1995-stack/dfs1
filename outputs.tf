output "resource_group_name" {
  value       = data.azurerm_resource_group.rsg_principal.name
  description = "Resource group used for deployment."
}

output "data_factory_id" {
  value       = azurerm_data_factory.adf.id
  description = "ADF resource ID."
}

output "data_factory_name" {
  value       = azurerm_data_factory.adf.name
  description = "ADF name."
}

output "data_factory_identity_type" {
  value       = azurerm_data_factory.adf.identity[0].type
  description = "ADF identity type."
}

output "uai_id" {
  value       = local.key_cmk ? azurerm_user_assigned_identity.uai[0].id : null
  description = "User Assigned Identity ID (only if CMK enabled)."
}

output "key_vault_id" {
  value       = local.key_cmk ? data.azurerm_key_vault.akv_principal[0].id : null
  description = "Key Vault ID (only if CMK enabled)."
}

output "key_vault_key_id" {
  value       = local.key_cmk ? data.azurerm_key_vault_key.key_principal[0].id : null
  description = "Key Vault Key ID (only if CMK enabled)."
}

output "log_analytics_workspace_id" {
  value       = local.lwk_enabled ? data.azurerm_log_analytics_workspace.lwk_principal[0].id : null
  description = "Log Analytics Workspace ID (only if diagnostics enabled)."
}

output "diagnostic_setting_id" {
  value       = local.lwk_enabled ? azurerm_monitor_diagnostic_setting.mdsettings[0].id : null
  description = "Diagnostic setting ID (only if enabled)."
}

output "arm_template_deployment_name" {
  value       = local.lwk_enabled ? azurerm_resource_group_template_deployment.ADAnalytics[0].name : null
  description = "ARM template deployment name (only if enabled)."
}
