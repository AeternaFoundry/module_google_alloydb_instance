variable "alloydb_instances" {
  description = <<EOT
Map of alloydb_instances, attributes below
Required:
    - cluster
    - instance_id
    - instance_type
Optional:
    - activation_policy
    - annotations
    - availability_type
    - database_flags
    - deletion_policy
    - display_name
    - gce_zone
    - labels
    - client_connection_config (block):
        - require_connectors (optional)
        - ssl_config (optional, block):
            - ssl_mode (optional)
    - connection_pool_config (block):
        - enabled (required)
        - flags (optional)
    - machine_config (block):
        - cpu_count (optional)
        - machine_type (optional)
    - network_config (block):
        - allocated_ip_range_override (optional)
        - authorized_external_networks (optional, block):
            - cidr_range (optional)
        - enable_outbound_public_ip (optional)
        - enable_public_ip (optional)
    - psc_instance_config (block):
        - allowed_consumer_projects (optional)
        - psc_auto_connections (optional, block):
            - consumer_network (optional)
            - consumer_project (optional)
        - psc_interface_configs (optional, block):
            - network_attachment_resource (optional)
    - query_insights_config (block):
        - query_plans_per_minute (optional)
        - query_string_length (optional)
        - record_application_tags (optional)
        - record_client_address (optional)
    - read_pool_config (block):
        - node_count (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    cluster           = string
    instance_id       = string
    instance_type     = string
    activation_policy = optional(string)
    annotations       = optional(map(string))
    availability_type = optional(string)
    database_flags    = optional(map(string))
    deletion_policy   = optional(string)
    display_name      = optional(string)
    gce_zone          = optional(string)
    labels            = optional(map(string))
    client_connection_config = optional(object({
      require_connectors = optional(bool)
      ssl_config = optional(object({
        ssl_mode = optional(string)
      }))
    }))
    connection_pool_config = optional(object({
      enabled = bool
      flags   = optional(map(string))
    }))
    machine_config = optional(object({
      cpu_count    = optional(number)
      machine_type = optional(string)
    }))
    network_config = optional(object({
      allocated_ip_range_override = optional(string)
      authorized_external_networks = optional(list(object({
        cidr_range = optional(string)
      })))
      enable_outbound_public_ip = optional(bool)
      enable_public_ip          = optional(bool)
    }))
    psc_instance_config = optional(object({
      allowed_consumer_projects = optional(list(string))
      psc_auto_connections = optional(list(object({
        consumer_network = optional(string)
        consumer_project = optional(string)
      })))
      psc_interface_configs = optional(list(object({
        network_attachment_resource = optional(string)
      })))
    }))
    query_insights_config = optional(object({
      query_plans_per_minute  = optional(number)
      query_string_length     = optional(number)
      record_application_tags = optional(bool)
      record_client_address   = optional(bool)
    }))
    read_pool_config = optional(object({
      node_count = optional(number)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

