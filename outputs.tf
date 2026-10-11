output "dashboards_lookup_dashboard_name_contains" {
  description = "Map of dashboard_name_contains values across all dashboards_lookup, keyed the same as var.dashboards_lookup except keys with no dashboard_name_contains are omitted"
  value       = { for k, v in data.databricks_dashboards.dashboards_lookup : k => v.dashboard_name_contains if v.dashboard_name_contains != null && length(v.dashboard_name_contains) > 0 }
}
output "dashboards_lookup_dashboards" {
  description = "Map of dashboards values across all dashboards_lookup, keyed the same as var.dashboards_lookup except keys with no dashboards are omitted"
  value       = { for k, v in data.databricks_dashboards.dashboards_lookup : k => v.dashboards if v.dashboards != null && length(v.dashboards) > 0 }
}
output "dashboards_lookup_provider_config" {
  description = "Map of provider_config values across all dashboards_lookup, keyed the same as var.dashboards_lookup except keys with no provider_config are omitted"
  value       = { for k, v in data.databricks_dashboards.dashboards_lookup : k => v.provider_config if v.provider_config != null && length(v.provider_config) > 0 }
}

