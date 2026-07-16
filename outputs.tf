output "synapse_firewall_rules_id" {
  description = "Map of id values across all synapse_firewall_rules, keyed the same as var.synapse_firewall_rules"
  value       = { for k, v in azurerm_synapse_firewall_rule.synapse_firewall_rules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "synapse_firewall_rules_end_ip_address" {
  description = "Map of end_ip_address values across all synapse_firewall_rules, keyed the same as var.synapse_firewall_rules"
  value       = { for k, v in azurerm_synapse_firewall_rule.synapse_firewall_rules : k => v.end_ip_address if v.end_ip_address != null && length(v.end_ip_address) > 0 }
}
output "synapse_firewall_rules_name" {
  description = "Map of name values across all synapse_firewall_rules, keyed the same as var.synapse_firewall_rules"
  value       = { for k, v in azurerm_synapse_firewall_rule.synapse_firewall_rules : k => v.name if v.name != null && length(v.name) > 0 }
}
output "synapse_firewall_rules_start_ip_address" {
  description = "Map of start_ip_address values across all synapse_firewall_rules, keyed the same as var.synapse_firewall_rules"
  value       = { for k, v in azurerm_synapse_firewall_rule.synapse_firewall_rules : k => v.start_ip_address if v.start_ip_address != null && length(v.start_ip_address) > 0 }
}
output "synapse_firewall_rules_synapse_workspace_id" {
  description = "Map of synapse_workspace_id values across all synapse_firewall_rules, keyed the same as var.synapse_firewall_rules"
  value       = { for k, v in azurerm_synapse_firewall_rule.synapse_firewall_rules : k => v.synapse_workspace_id if v.synapse_workspace_id != null && length(v.synapse_workspace_id) > 0 }
}

