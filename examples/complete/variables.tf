variable "cluster_id" {
  type        = string
  description = "Existing VKE cluster ID."
}

variable "node_problem_detector_version" {
  type        = string
  description = "VKE-supported node-problem-detector add-on version."
}

variable "security_scan_version" {
  type        = string
  description = "VKE-supported security-scan add-on version."
}

variable "image_accelerator_version" {
  type        = string
  description = "VKE-supported image-accelerator add-on version."
}

variable "log_collector_version" {
  type        = string
  description = "VKE-supported log-collector add-on version."
}
