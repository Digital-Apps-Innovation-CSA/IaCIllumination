group_name  = "rgdemomtcacademy001"
location    = "mexicocentral"
tags        = {
  environment = "dev"
  project     = "integration"
  owner       = "rvr"
  destination = "azure"
}
serviceplan = {
  name     = "sprvrterraform001"
  sku_name = "PremiumV2"
  size = "P1V2"

}
storage = {
  name = "strvrterraform001"
  account_tier = "Standard"
  account_replication_type = "ZRS"
}
functionapp = {
  name = "functionrvri001"
}