resource "aws_bedrockagent_agent" "bedrockagent_agents" {
  for_each = var.bedrockagent_agents

  agent_name                  = each.value.agent_name
  agent_resource_role_arn     = each.value.agent_resource_role_arn
  foundation_model            = each.value.foundation_model
  agent_collaboration         = each.value.agent_collaboration
  customer_encryption_key_arn = each.value.customer_encryption_key_arn
  description                 = each.value.description
  idle_session_ttl_in_seconds = each.value.idle_session_ttl_in_seconds
  instruction                 = each.value.instruction
  prepare_agent               = each.value.prepare_agent
  region                      = each.value.region
  skip_resource_in_use_check  = each.value.skip_resource_in_use_check
  tags                        = each.value.tags

  dynamic "guardrail_configuration" {
    for_each = each.value.guardrail_configuration != null ? each.value.guardrail_configuration : []
    content {
      guardrail_identifier = guardrail_configuration.value.guardrail_identifier
      guardrail_version    = guardrail_configuration.value.guardrail_version
    }
  }

  dynamic "memory_configuration" {
    for_each = each.value.memory_configuration != null ? each.value.memory_configuration : []
    content {
      enabled_memory_types = memory_configuration.value.enabled_memory_types
      dynamic "session_summary_configuration" {
        for_each = memory_configuration.value.session_summary_configuration != null ? memory_configuration.value.session_summary_configuration : []
        content {
          max_recent_sessions = session_summary_configuration.value.max_recent_sessions
        }
      }
      storage_days = memory_configuration.value.storage_days
    }
  }

  dynamic "prompt_override_configuration" {
    for_each = each.value.prompt_override_configuration != null ? each.value.prompt_override_configuration : []
    content {
      override_lambda = prompt_override_configuration.value.override_lambda
      dynamic "prompt_configurations" {
        for_each = prompt_override_configuration.value.prompt_configurations != null ? prompt_override_configuration.value.prompt_configurations : []
        content {
          base_prompt_template = prompt_configurations.value.base_prompt_template
          dynamic "inference_configuration" {
            for_each = prompt_configurations.value.inference_configuration != null ? prompt_configurations.value.inference_configuration : []
            content {
              max_length     = inference_configuration.value.max_length
              stop_sequences = inference_configuration.value.stop_sequences
              temperature    = inference_configuration.value.temperature
              top_k          = inference_configuration.value.top_k
              top_p          = inference_configuration.value.top_p
            }
          }
          parser_mode          = prompt_configurations.value.parser_mode
          prompt_creation_mode = prompt_configurations.value.prompt_creation_mode
          prompt_state         = prompt_configurations.value.prompt_state
          prompt_type          = prompt_configurations.value.prompt_type
        }
      }
    }
  }
}

