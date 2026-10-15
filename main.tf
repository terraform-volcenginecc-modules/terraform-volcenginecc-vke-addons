resource "volcenginecc_vke_addon" "this" {
  for_each = {
    for key, addon in var.addons : key => addon
    if addon.enabled
  }

  cluster_id       = var.cluster_id
  name             = each.value.name
  version          = each.value.version
  config           = each.value.config == null ? null : jsonencode(jsondecode(each.value.config))
  deploy_mode      = each.value.deploy_mode
  deploy_node_type = each.value.deploy_node_type
}
