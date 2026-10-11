output "alloydb_instances_id" {
  description = "Map of id values across all alloydb_instances, keyed the same as var.alloydb_instances except keys with no id are omitted"
  value       = { for k, v in google_alloydb_instance.alloydb_instances : k => v.id if v.id != null && length(v.id) > 0 }
}
output "alloydb_instances_activation_policy" {
  description = "Map of activation_policy values across all alloydb_instances, keyed the same as var.alloydb_instances except keys with no activation_policy are omitted"
  value       = { for k, v in google_alloydb_instance.alloydb_instances : k => v.activation_policy if v.activation_policy != null && length(v.activation_policy) > 0 }
}
output "alloydb_instances_annotations" {
  description = "Map of annotations values across all alloydb_instances, keyed the same as var.alloydb_instances except keys with no annotations are omitted"
  value       = { for k, v in google_alloydb_instance.alloydb_instances : k => v.annotations if v.annotations != null && length(v.annotations) > 0 }
}
output "alloydb_instances_availability_type" {
  description = "Map of availability_type values across all alloydb_instances, keyed the same as var.alloydb_instances except keys with no availability_type are omitted"
  value       = { for k, v in google_alloydb_instance.alloydb_instances : k => v.availability_type if v.availability_type != null && length(v.availability_type) > 0 }
}
output "alloydb_instances_client_connection_config" {
  description = "Map of client_connection_config values across all alloydb_instances, keyed the same as var.alloydb_instances except keys with no client_connection_config are omitted"
  value       = { for k, v in google_alloydb_instance.alloydb_instances : k => one(v.client_connection_config) if v.client_connection_config != null && length(v.client_connection_config) > 0 }
}
output "alloydb_instances_cluster" {
  description = "Map of cluster values across all alloydb_instances, keyed the same as var.alloydb_instances except keys with no cluster are omitted"
  value       = { for k, v in google_alloydb_instance.alloydb_instances : k => v.cluster if v.cluster != null && length(v.cluster) > 0 }
}
output "alloydb_instances_connection_pool_config" {
  description = "Map of connection_pool_config values across all alloydb_instances, keyed the same as var.alloydb_instances except keys with no connection_pool_config are omitted"
  value       = { for k, v in google_alloydb_instance.alloydb_instances : k => one(v.connection_pool_config) if v.connection_pool_config != null && length(v.connection_pool_config) > 0 }
}
output "alloydb_instances_create_time" {
  description = "Map of create_time values across all alloydb_instances, keyed the same as var.alloydb_instances except keys with no create_time are omitted"
  value       = { for k, v in google_alloydb_instance.alloydb_instances : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "alloydb_instances_database_flags" {
  description = "Map of database_flags values across all alloydb_instances, keyed the same as var.alloydb_instances except keys with no database_flags are omitted"
  value       = { for k, v in google_alloydb_instance.alloydb_instances : k => v.database_flags if v.database_flags != null && length(v.database_flags) > 0 }
}
output "alloydb_instances_deletion_policy" {
  description = "Map of deletion_policy values across all alloydb_instances, keyed the same as var.alloydb_instances except keys with no deletion_policy are omitted"
  value       = { for k, v in google_alloydb_instance.alloydb_instances : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "alloydb_instances_display_name" {
  description = "Map of display_name values across all alloydb_instances, keyed the same as var.alloydb_instances except keys with no display_name are omitted"
  value       = { for k, v in google_alloydb_instance.alloydb_instances : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "alloydb_instances_effective_annotations" {
  description = "Map of effective_annotations values across all alloydb_instances, keyed the same as var.alloydb_instances except keys with no effective_annotations are omitted"
  value       = { for k, v in google_alloydb_instance.alloydb_instances : k => v.effective_annotations if v.effective_annotations != null && length(v.effective_annotations) > 0 }
}
output "alloydb_instances_effective_labels" {
  description = "Map of effective_labels values across all alloydb_instances, keyed the same as var.alloydb_instances except keys with no effective_labels are omitted"
  value       = { for k, v in google_alloydb_instance.alloydb_instances : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "alloydb_instances_gce_zone" {
  description = "Map of gce_zone values across all alloydb_instances, keyed the same as var.alloydb_instances except keys with no gce_zone are omitted"
  value       = { for k, v in google_alloydb_instance.alloydb_instances : k => v.gce_zone if v.gce_zone != null && length(v.gce_zone) > 0 }
}
output "alloydb_instances_instance_id" {
  description = "Map of instance_id values across all alloydb_instances, keyed the same as var.alloydb_instances except keys with no instance_id are omitted"
  value       = { for k, v in google_alloydb_instance.alloydb_instances : k => v.instance_id if v.instance_id != null && length(v.instance_id) > 0 }
}
output "alloydb_instances_instance_type" {
  description = "Map of instance_type values across all alloydb_instances, keyed the same as var.alloydb_instances except keys with no instance_type are omitted"
  value       = { for k, v in google_alloydb_instance.alloydb_instances : k => v.instance_type if v.instance_type != null && length(v.instance_type) > 0 }
}
output "alloydb_instances_ip_address" {
  description = "Map of ip_address values across all alloydb_instances, keyed the same as var.alloydb_instances except keys with no ip_address are omitted"
  value       = { for k, v in google_alloydb_instance.alloydb_instances : k => v.ip_address if v.ip_address != null && length(v.ip_address) > 0 }
}
output "alloydb_instances_labels" {
  description = "Map of labels values across all alloydb_instances, keyed the same as var.alloydb_instances except keys with no labels are omitted"
  value       = { for k, v in google_alloydb_instance.alloydb_instances : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "alloydb_instances_machine_config" {
  description = "Map of machine_config values across all alloydb_instances, keyed the same as var.alloydb_instances except keys with no machine_config are omitted"
  value       = { for k, v in google_alloydb_instance.alloydb_instances : k => one(v.machine_config) if v.machine_config != null && length(v.machine_config) > 0 }
}
output "alloydb_instances_name" {
  description = "Map of name values across all alloydb_instances, keyed the same as var.alloydb_instances except keys with no name are omitted"
  value       = { for k, v in google_alloydb_instance.alloydb_instances : k => v.name if v.name != null && length(v.name) > 0 }
}
output "alloydb_instances_network_config" {
  description = "Map of network_config values across all alloydb_instances, keyed the same as var.alloydb_instances except keys with no network_config are omitted"
  value       = { for k, v in google_alloydb_instance.alloydb_instances : k => one(v.network_config) if v.network_config != null && length(v.network_config) > 0 }
}
output "alloydb_instances_outbound_public_ip_addresses" {
  description = "Map of outbound_public_ip_addresses values across all alloydb_instances, keyed the same as var.alloydb_instances except keys with no outbound_public_ip_addresses are omitted"
  value       = { for k, v in google_alloydb_instance.alloydb_instances : k => v.outbound_public_ip_addresses if v.outbound_public_ip_addresses != null && length(v.outbound_public_ip_addresses) > 0 }
}
output "alloydb_instances_psc_instance_config" {
  description = "Map of psc_instance_config values across all alloydb_instances, keyed the same as var.alloydb_instances except keys with no psc_instance_config are omitted"
  value       = { for k, v in google_alloydb_instance.alloydb_instances : k => one(v.psc_instance_config) if v.psc_instance_config != null && length(v.psc_instance_config) > 0 }
}
output "alloydb_instances_public_ip_address" {
  description = "Map of public_ip_address values across all alloydb_instances, keyed the same as var.alloydb_instances except keys with no public_ip_address are omitted"
  value       = { for k, v in google_alloydb_instance.alloydb_instances : k => v.public_ip_address if v.public_ip_address != null && length(v.public_ip_address) > 0 }
}
output "alloydb_instances_query_insights_config" {
  description = "Map of query_insights_config values across all alloydb_instances, keyed the same as var.alloydb_instances except keys with no query_insights_config are omitted"
  value       = { for k, v in google_alloydb_instance.alloydb_instances : k => one(v.query_insights_config) if v.query_insights_config != null && length(v.query_insights_config) > 0 }
}
output "alloydb_instances_read_pool_config" {
  description = "Map of read_pool_config values across all alloydb_instances, keyed the same as var.alloydb_instances except keys with no read_pool_config are omitted"
  value       = { for k, v in google_alloydb_instance.alloydb_instances : k => one(v.read_pool_config) if v.read_pool_config != null && length(v.read_pool_config) > 0 }
}
output "alloydb_instances_reconciling" {
  description = "Map of reconciling values across all alloydb_instances, keyed the same as var.alloydb_instances except keys with no reconciling are omitted"
  value       = { for k, v in google_alloydb_instance.alloydb_instances : k => v.reconciling if v.reconciling != null }
}
output "alloydb_instances_state" {
  description = "Map of state values across all alloydb_instances, keyed the same as var.alloydb_instances except keys with no state are omitted"
  value       = { for k, v in google_alloydb_instance.alloydb_instances : k => v.state if v.state != null && length(v.state) > 0 }
}
output "alloydb_instances_terraform_labels" {
  description = "Map of terraform_labels values across all alloydb_instances, keyed the same as var.alloydb_instances except keys with no terraform_labels are omitted"
  value       = { for k, v in google_alloydb_instance.alloydb_instances : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}
output "alloydb_instances_uid" {
  description = "Map of uid values across all alloydb_instances, keyed the same as var.alloydb_instances except keys with no uid are omitted"
  value       = { for k, v in google_alloydb_instance.alloydb_instances : k => v.uid if v.uid != null && length(v.uid) > 0 }
}
output "alloydb_instances_update_time" {
  description = "Map of update_time values across all alloydb_instances, keyed the same as var.alloydb_instances except keys with no update_time are omitted"
  value       = { for k, v in google_alloydb_instance.alloydb_instances : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}

