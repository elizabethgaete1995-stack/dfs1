############################################
# CORE
############################################
subscriptionid = "ef0a94be-5750-4ef8-944b-1bbc0cdda800"

rsg_name  = "rg-poc-test-001"
location = "chilecentral"

adf_name = "adf-poc-chl-analytics-001"

inherit = true


############################################
# TAGS (Gobierno)
############################################
entity        = "dls"
environment   = "dev"
app_name      = "analytics-platform-poc"
cost_center   = "CC-POCCHL"
tracking_code = "ADF-CORE-001"

custom_tags = {
  owner      = "data-team"
  managed_by = "terraform"
}

optional_tags = {
  compliance = "pci"
}


############################################
# ADF - NETWORK
############################################
adf_vnet_enabled                   = true
adf_public_network_access_enabled  = false


############################################
# CMK (Key Vault)
############################################
key_custom_enabled = true
key_exist          = false

akv_name = "akvchilecentralakvdev001"
key_name = "adf-cmk-key"
uai_name = "uai-adf-cmk-01"

# Si ya tienes otras UAI que quieras adjuntar al ADF
identity_list = []


############################################
# GITHUB (ADF Repo Integration)
############################################
enable_github   = true
account_name    = "my-org"
branch_name     = "main"
git_url         = "https://github.com"
repository_name = "adf-factory"
root_folder     = "/"


############################################
# LOG ANALYTICS + DIAGNOSTICS
############################################
analytics_diagnostic_monitor_enabled = true

lwk_name     = "lwkchilecentrallwkdev001"
lwk_rsg_name = "rg-poc-test-001"

analytics_diagnostic_monitor_name = "adf-diagnostics"
template_adanalytics_name         = "adf-analytics-solution"


key_custom_enabled = false
key_exist          = false
analytics_diagnostic_monitor_enabled = false
