variable "dashboards_lookup" {
  description = <<EOT
Map of dashboards_lookup, attributes below
Optional:
    - dashboard_name_contains
    - provider_config
EOT

  type = map(object({
    dashboard_name_contains = optional(string)
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

