data "databricks_dashboards" "dashboards_lookup" {
  for_each = var.dashboards_lookup

  dashboard_name_contains = each.value.dashboard_name_contains
  provider_config         = each.value.provider_config
}

