variable "bedrockagent_agents" {
  description = <<EOT
Map of bedrockagent_agents, attributes below
Required:
    - agent_name
    - agent_resource_role_arn
    - foundation_model
Optional:
    - agent_collaboration
    - customer_encryption_key_arn
    - description
    - idle_session_ttl_in_seconds
    - instruction
    - prepare_agent
    - region
    - skip_resource_in_use_check
    - tags
    - guardrail_configuration (block):
        - guardrail_identifier (optional)
        - guardrail_version (optional)
    - memory_configuration (block):
        - enabled_memory_types (optional)
        - session_summary_configuration (optional, block):
            - max_recent_sessions (optional)
        - storage_days (optional)
    - prompt_override_configuration (block):
        - override_lambda (optional)
        - prompt_configurations (optional, block):
            - base_prompt_template (optional)
            - inference_configuration (optional, block):
                - max_length (optional)
                - stop_sequences (optional)
                - temperature (optional)
                - top_k (optional)
                - top_p (optional)
            - parser_mode (optional)
            - prompt_creation_mode (optional)
            - prompt_state (optional)
            - prompt_type (optional)
EOT

  type = map(object({
    agent_name                  = string
    agent_resource_role_arn     = string
    foundation_model            = string
    agent_collaboration         = optional(string)
    customer_encryption_key_arn = optional(string)
    description                 = optional(string)
    idle_session_ttl_in_seconds = optional(number)
    instruction                 = optional(string)
    prepare_agent               = optional(bool)
    region                      = optional(string)
    skip_resource_in_use_check  = optional(bool)
    tags                        = optional(map(string))
    guardrail_configuration = optional(list(object({
      guardrail_identifier = optional(string)
      guardrail_version    = optional(string)
    })))
    memory_configuration = optional(list(object({
      enabled_memory_types = optional(list(string))
      session_summary_configuration = optional(list(object({
        max_recent_sessions = optional(number)
      })))
      storage_days = optional(number)
    })))
    prompt_override_configuration = optional(list(object({
      override_lambda = optional(string)
      prompt_configurations = optional(list(object({
        base_prompt_template = optional(string)
        inference_configuration = optional(list(object({
          max_length     = optional(number)
          stop_sequences = optional(list(string))
          temperature    = optional(number)
          top_k          = optional(number)
          top_p          = optional(number)
        })))
        parser_mode          = optional(string)
        prompt_creation_mode = optional(string)
        prompt_state         = optional(string)
        prompt_type          = optional(string)
      })))
    })))
  }))
}

