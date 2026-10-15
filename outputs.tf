output "addons" {
  description = "Managed VKE add-ons keyed by the stable input map key."
  value = {
    for key, addon in volcenginecc_vke_addon.this : key => {
      id               = addon.id
      cluster_id       = addon.cluster_id
      name             = addon.name
      version          = addon.version
      deploy_mode      = addon.deploy_mode
      deploy_node_type = addon.deploy_node_type
      phase            = try(addon.status.phase, null)
      created_time     = addon.created_time
      updated_time     = addon.updated_time
    }
  }
}

output "addon_ids" {
  description = "VKE add-on resource IDs keyed by the stable input map key."
  value       = { for key, addon in volcenginecc_vke_addon.this : key => addon.id }
}
