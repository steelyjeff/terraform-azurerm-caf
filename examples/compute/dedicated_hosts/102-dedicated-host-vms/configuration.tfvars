global_settings = {
  default_region = "region1"
  regions = {
    region1 = "eastus"
  }
}

resource_groups = {
  dhg = {
    name   = "dedicated-test1"
    region = "region1"
  }
}

dedicated_host_groups = {
  dhg1 = {
    name                        = "example-dhg"
    resource_group_key          = "dhg"
    region                      = "region1"
    platform_fault_domain_count = 1
    automatic_placement_enabled = false
    tags = {
    test = "dhg" }
  }
}

dedicated_hosts = {
  dh1 = {
    name                     = "example-host-dhg"
    dedicated_host_group_key = "dhg1"
    #lz_key = "remote landing zone key"
    region                  = "region1"
    sku_name                = "DCSv2-Type1"
    platform_fault_domain   = 0
    auto_replace_on_failure = true
    # license_type = "Windows_Server_Hybrid"
    tags = {
      test = "dhg"
    }
  }
}

