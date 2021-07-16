global_settings = {
  default_region = "region1"
  regions = {
    region1 = "eastus"
  }
}

resource_groups = {
  rg1 = {
    name    =  "fda-test"
    region  = "region1"
    tags    = {
        test = "fda"
    }
  }
}