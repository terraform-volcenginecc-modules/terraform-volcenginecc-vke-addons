variable "cluster_id" {
  type        = string
  description = "Existing VKE cluster ID."
}

variable "node_problem_detector_version" {
  type        = string
  description = "VKE-supported node-problem-detector add-on version."
}
