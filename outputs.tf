output "bedrockagent_agents_id" {
  description = "Map of id values across all bedrockagent_agents, keyed the same as var.bedrockagent_agents"
  value       = { for k, v in aws_bedrockagent_agent.bedrockagent_agents : k => v.id if v.id != null && length(v.id) > 0 }
}
output "bedrockagent_agents_agent_arn" {
  description = "Map of agent_arn values across all bedrockagent_agents, keyed the same as var.bedrockagent_agents"
  value       = { for k, v in aws_bedrockagent_agent.bedrockagent_agents : k => v.agent_arn if v.agent_arn != null && length(v.agent_arn) > 0 }
}
output "bedrockagent_agents_agent_collaboration" {
  description = "Map of agent_collaboration values across all bedrockagent_agents, keyed the same as var.bedrockagent_agents"
  value       = { for k, v in aws_bedrockagent_agent.bedrockagent_agents : k => v.agent_collaboration if v.agent_collaboration != null && length(v.agent_collaboration) > 0 }
}
output "bedrockagent_agents_agent_id" {
  description = "Map of agent_id values across all bedrockagent_agents, keyed the same as var.bedrockagent_agents"
  value       = { for k, v in aws_bedrockagent_agent.bedrockagent_agents : k => v.agent_id if v.agent_id != null && length(v.agent_id) > 0 }
}
output "bedrockagent_agents_agent_name" {
  description = "Map of agent_name values across all bedrockagent_agents, keyed the same as var.bedrockagent_agents"
  value       = { for k, v in aws_bedrockagent_agent.bedrockagent_agents : k => v.agent_name if v.agent_name != null && length(v.agent_name) > 0 }
}
output "bedrockagent_agents_agent_resource_role_arn" {
  description = "Map of agent_resource_role_arn values across all bedrockagent_agents, keyed the same as var.bedrockagent_agents"
  value       = { for k, v in aws_bedrockagent_agent.bedrockagent_agents : k => v.agent_resource_role_arn if v.agent_resource_role_arn != null && length(v.agent_resource_role_arn) > 0 }
}
output "bedrockagent_agents_agent_version" {
  description = "Map of agent_version values across all bedrockagent_agents, keyed the same as var.bedrockagent_agents"
  value       = { for k, v in aws_bedrockagent_agent.bedrockagent_agents : k => v.agent_version if v.agent_version != null && length(v.agent_version) > 0 }
}
output "bedrockagent_agents_customer_encryption_key_arn" {
  description = "Map of customer_encryption_key_arn values across all bedrockagent_agents, keyed the same as var.bedrockagent_agents"
  value       = { for k, v in aws_bedrockagent_agent.bedrockagent_agents : k => v.customer_encryption_key_arn if v.customer_encryption_key_arn != null && length(v.customer_encryption_key_arn) > 0 }
}
output "bedrockagent_agents_description" {
  description = "Map of description values across all bedrockagent_agents, keyed the same as var.bedrockagent_agents"
  value       = { for k, v in aws_bedrockagent_agent.bedrockagent_agents : k => v.description if v.description != null && length(v.description) > 0 }
}
output "bedrockagent_agents_foundation_model" {
  description = "Map of foundation_model values across all bedrockagent_agents, keyed the same as var.bedrockagent_agents"
  value       = { for k, v in aws_bedrockagent_agent.bedrockagent_agents : k => v.foundation_model if v.foundation_model != null && length(v.foundation_model) > 0 }
}
output "bedrockagent_agents_guardrail_configuration" {
  description = "Map of guardrail_configuration values across all bedrockagent_agents, keyed the same as var.bedrockagent_agents"
  value       = { for k, v in aws_bedrockagent_agent.bedrockagent_agents : k => v.guardrail_configuration if v.guardrail_configuration != null && length(v.guardrail_configuration) > 0 }
}
output "bedrockagent_agents_idle_session_ttl_in_seconds" {
  description = "Map of idle_session_ttl_in_seconds values across all bedrockagent_agents, keyed the same as var.bedrockagent_agents"
  value       = { for k, v in aws_bedrockagent_agent.bedrockagent_agents : k => v.idle_session_ttl_in_seconds if v.idle_session_ttl_in_seconds != null }
}
output "bedrockagent_agents_instruction" {
  description = "Map of instruction values across all bedrockagent_agents, keyed the same as var.bedrockagent_agents"
  value       = { for k, v in aws_bedrockagent_agent.bedrockagent_agents : k => v.instruction if v.instruction != null && length(v.instruction) > 0 }
}
output "bedrockagent_agents_memory_configuration" {
  description = "Map of memory_configuration values across all bedrockagent_agents, keyed the same as var.bedrockagent_agents"
  value       = { for k, v in aws_bedrockagent_agent.bedrockagent_agents : k => v.memory_configuration if v.memory_configuration != null && length(v.memory_configuration) > 0 }
}
output "bedrockagent_agents_prepare_agent" {
  description = "Map of prepare_agent values across all bedrockagent_agents, keyed the same as var.bedrockagent_agents"
  value       = { for k, v in aws_bedrockagent_agent.bedrockagent_agents : k => v.prepare_agent if v.prepare_agent != null }
}
output "bedrockagent_agents_prepared_at" {
  description = "Map of prepared_at values across all bedrockagent_agents, keyed the same as var.bedrockagent_agents"
  value       = { for k, v in aws_bedrockagent_agent.bedrockagent_agents : k => v.prepared_at if v.prepared_at != null && length(v.prepared_at) > 0 }
}
output "bedrockagent_agents_prompt_override_configuration" {
  description = "Map of prompt_override_configuration values across all bedrockagent_agents, keyed the same as var.bedrockagent_agents"
  value       = { for k, v in aws_bedrockagent_agent.bedrockagent_agents : k => v.prompt_override_configuration if v.prompt_override_configuration != null && length(v.prompt_override_configuration) > 0 }
}
output "bedrockagent_agents_region" {
  description = "Map of region values across all bedrockagent_agents, keyed the same as var.bedrockagent_agents"
  value       = { for k, v in aws_bedrockagent_agent.bedrockagent_agents : k => v.region if v.region != null && length(v.region) > 0 }
}
output "bedrockagent_agents_skip_resource_in_use_check" {
  description = "Map of skip_resource_in_use_check values across all bedrockagent_agents, keyed the same as var.bedrockagent_agents"
  value       = { for k, v in aws_bedrockagent_agent.bedrockagent_agents : k => v.skip_resource_in_use_check if v.skip_resource_in_use_check != null }
}
output "bedrockagent_agents_tags" {
  description = "Map of tags values across all bedrockagent_agents, keyed the same as var.bedrockagent_agents"
  value       = { for k, v in aws_bedrockagent_agent.bedrockagent_agents : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "bedrockagent_agents_tags_all" {
  description = "Map of tags_all values across all bedrockagent_agents, keyed the same as var.bedrockagent_agents"
  value       = { for k, v in aws_bedrockagent_agent.bedrockagent_agents : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

