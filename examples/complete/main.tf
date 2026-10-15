module "vke_addons" {
  source  = "terraform-volcenginecc-modules/vke-addons/volcenginecc"
  version = "~> 1.0"

  cluster_id = var.cluster_id

  addons = {
    node_problem_detector = {
      name             = "node-problem-detector"
      version          = var.node_problem_detector_version
      deploy_mode      = "Unmanaged"
      deploy_node_type = "Node"
    }

    security_scan = {
      name             = "security-scan"
      version          = var.security_scan_version
      deploy_mode      = "Unmanaged"
      deploy_node_type = "Node"
    }

    image_accelerator = {
      name             = "image-accelerator"
      version          = var.image_accelerator_version
      deploy_mode      = "Unmanaged"
      deploy_node_type = "Node"
    }

    log_collector = {
      name             = "log-collector"
      version          = var.log_collector_version
      deploy_mode      = "Unmanaged"
      deploy_node_type = "Node"
    }
  }
}
