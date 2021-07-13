variable "ToolsforDevOps" {
  default = ["ansible", "terraform", "Elk", "Prometheus",]
}

output "TotalTools" {
  value = length(var.ToolsforDevOps)
}

output "PatricularTool" {
  value = length(var.ToolsforDevOps, 0)
}