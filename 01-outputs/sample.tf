output "pen" {
  value = "class"
}

output "bottle" {
  value = "${var.sample} welcomes you"
}

variable "sample" {
  default = "Hello world"
}

output "firstCommand" {
  value = var.sample
}
variable "sample1" {
  default = 100
}

variable "sample2" {
  default = true
}

output "boolean" {
  value = var.sample2
}
## Variable sample can be accessed as var.sample or ${var.sample}, However
## var.sample is used without quotes
## ${var.sample} is used within quotes.
## Usually ${} used only when you combine with some other data
## Single quotes does not support by terraform at any level. Supports only double quotes.

variable "sample4" {
  default = [
    "Hello",
    100,
    true
  ]
}
output "sample4" {
  value = var.sample4[2]
}

variable "sample5" {
  default = {
    string = "DevOps",
    number = 900,
    boolean = true
  }
}

output "sample5" {
  value = var.sample5["number"]
}

variable "sample6" {}

output "helloworld" {
  value = var.sample6