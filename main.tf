resource "google_alloydb_instance" "alloydb_instances" {
  for_each = var.alloydb_instances

  cluster           = each.value.cluster
  instance_id       = each.value.instance_id
  instance_type     = each.value.instance_type
  activation_policy = each.value.activation_policy
  annotations       = each.value.annotations
  availability_type = each.value.availability_type
  database_flags    = each.value.database_flags
  deletion_policy   = each.value.deletion_policy
  display_name      = each.value.display_name
  gce_zone          = each.value.gce_zone
  labels            = each.value.labels

  dynamic "client_connection_config" {
    for_each = each.value.client_connection_config != null ? [each.value.client_connection_config] : []
    content {
      require_connectors = client_connection_config.value.require_connectors
      dynamic "ssl_config" {
        for_each = client_connection_config.value.ssl_config != null ? [client_connection_config.value.ssl_config] : []
        content {
          ssl_mode = ssl_config.value.ssl_mode
        }
      }
    }
  }

  dynamic "connection_pool_config" {
    for_each = each.value.connection_pool_config != null ? [each.value.connection_pool_config] : []
    content {
      enabled = connection_pool_config.value.enabled
      flags   = connection_pool_config.value.flags
    }
  }

  dynamic "machine_config" {
    for_each = each.value.machine_config != null ? [each.value.machine_config] : []
    content {
      cpu_count    = machine_config.value.cpu_count
      machine_type = machine_config.value.machine_type
    }
  }

  dynamic "network_config" {
    for_each = each.value.network_config != null ? [each.value.network_config] : []
    content {
      allocated_ip_range_override = network_config.value.allocated_ip_range_override
      dynamic "authorized_external_networks" {
        for_each = network_config.value.authorized_external_networks != null ? network_config.value.authorized_external_networks : []
        content {
          cidr_range = authorized_external_networks.value.cidr_range
        }
      }
      enable_outbound_public_ip = network_config.value.enable_outbound_public_ip
      enable_public_ip          = network_config.value.enable_public_ip
    }
  }

  dynamic "psc_instance_config" {
    for_each = each.value.psc_instance_config != null ? [each.value.psc_instance_config] : []
    content {
      allowed_consumer_projects = psc_instance_config.value.allowed_consumer_projects
      dynamic "psc_auto_connections" {
        for_each = psc_instance_config.value.psc_auto_connections != null ? psc_instance_config.value.psc_auto_connections : []
        content {
          consumer_network = psc_auto_connections.value.consumer_network
          consumer_project = psc_auto_connections.value.consumer_project
        }
      }
      dynamic "psc_interface_configs" {
        for_each = psc_instance_config.value.psc_interface_configs != null ? psc_instance_config.value.psc_interface_configs : []
        content {
          network_attachment_resource = psc_interface_configs.value.network_attachment_resource
        }
      }
    }
  }

  dynamic "query_insights_config" {
    for_each = each.value.query_insights_config != null ? [each.value.query_insights_config] : []
    content {
      query_plans_per_minute  = query_insights_config.value.query_plans_per_minute
      query_string_length     = query_insights_config.value.query_string_length
      record_application_tags = query_insights_config.value.record_application_tags
      record_client_address   = query_insights_config.value.record_client_address
    }
  }

  dynamic "read_pool_config" {
    for_each = each.value.read_pool_config != null ? [each.value.read_pool_config] : []
    content {
      node_count = read_pool_config.value.node_count
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

