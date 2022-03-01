terraform {
}


variable "list_var" {
  type = list(string)

  default = ["foo", "bar", "baz"]
}

variable "object_var" {
  type = object({
    foo : string,
    bar : number
    baz : list(number)
  })

  default = {
    "foo" : "bar",
    "bar" : 12,
    "baz" : [11, 12, 13]
  }
}

variable "tuple_var" {
  type    = tuple([string, number, bool])
  default = ["foo", 12, true]
}
