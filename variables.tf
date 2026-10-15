variable "cluster_id" {
  type        = string
  description = "ID of the caller-owned VKE cluster where add-ons are installed."

  validation {
    condition     = length(trimspace(var.cluster_id)) > 0
    error_message = "cluster_id cannot be empty."
  }
}

variable "addons" {
  type = map(object({
    name             = string
    version          = optional(string)
    config           = optional(string)
    deploy_mode      = optional(string, "Managed")
    deploy_node_type = optional(string)
    enabled          = optional(bool, true)
  }))
  description = "Stable-keyed VKE add-on definitions. Set enabled to false to uninstall an add-on managed by this module."

  validation {
    condition = alltrue([
      for addon in values(var.addons) :
      length(trimspace(addon.name)) > 0 &&
      (addon.version == null ? true : length(trimspace(addon.version)) > 0) &&
      (addon.config == null ? true : can(jsondecode(addon.config))) &&
      contains(["Managed", "Unmanaged"], addon.deploy_mode) &&
      (
        addon.deploy_mode == "Managed" ?
        addon.deploy_node_type == null :
        contains(["Node", "VirtualNode"], addon.deploy_node_type)
      )
    ])
    error_message = "Each add-on requires a name, a non-empty version when set, valid JSON config, and deploy_node_type only for Unmanaged mode."
  }
}
