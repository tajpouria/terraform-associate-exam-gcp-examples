variable "x_number" {
  type    = number
  default = 5
}

variable "x_map" {
  type = map(string)
  default = {
    "foo" = "bar"
    "bar" = "baz"
    "baz" = "foo"
  }
}

variable "x_list" {
  type = list(string)
  default = [
    "foo",
    "bar",
    "baz",
    "foo1",
    "bar1",
  ]
}

variable "project" {
  type = string
}