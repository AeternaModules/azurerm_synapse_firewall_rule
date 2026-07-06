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
  # --- Unconfirmed validation candidates, derived from azurerm_synapse_firewall_rule's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.FirewallRuleName] !ok
  # path: name
  #   source:    [from validate.FirewallRuleName] !regexp.MustCompile(`^[^<>*%&:\\/?]{0,127}[^.<>*%&:\\/?]$`).MatchString(v)
  # path: synapse_workspace_id
  #   source:    [from validate.WorkspaceID] !ok
  # path: synapse_workspace_id
  #   source:    [from validate.WorkspaceID] err != nil
  # path: start_ip_address
  #   source:    validation.IsIPv4Address(...) - no translation rule yet, add one
  # path: end_ip_address
  #   source:    validation.IsIPv4Address(...) - no translation rule yet, add one
}

