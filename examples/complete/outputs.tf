output "addons" {
  description = "Add-on details for the core, ingress, storage, logging, monitoring, and security scenarios."
  value       = module.vke_addons.addons
}
