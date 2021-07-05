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


## Variable sample can be accessed as var.sample or ${var.sample}, However
## var.sample is used without quotes
## ${var.sample} is used within quotes.
## Usually ${} used only when you combine with some other data
## Single quotes does not support by terraform at any level. Supports only double quotes.
