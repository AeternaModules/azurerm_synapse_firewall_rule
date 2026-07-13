variable "synapse_firewall_rules" {
  description = <<EOT
Map of synapse_firewall_rules, attributes below
Required:
    - end_ip_address
    - name
    - start_ip_address
    - synapse_workspace_id
EOT

  type = map(object({
    end_ip_address       = string
    name                 = string
    start_ip_address     = string
    synapse_workspace_id = string
  }))
  # Note: 6 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

