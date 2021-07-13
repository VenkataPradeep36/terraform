variable "ToolsforDevOps" {
  default = ["ansible", "terraform", "Elk", "Prometheus",]
}

output "TotalTools" {
  value = length(var.ToolsforDevOps)
}

output "PatricularTool" {
  value = element(var.ToolsforDevOps, 0)
}
