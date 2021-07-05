output "pen" {
  value = "class"
}

output "bottle" {
  value = "cork"
}

variable "sample" {
  default = "Hello world"
}

output "firstCommand" {
  value = var.sample
}