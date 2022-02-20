output "string_interpolation_ternary_operator" {
  value = "${var.x_number} is ${var.x_number % 2 == 0 ? "even" : "odd"}"
}

output "for_map" {
  value = [for k, v in var.x_map : upper("${k} => ${v}")]
}

output "for_list" {
  value = [for k, v in var.x_list : "${k} => ${v}" if k % 2 == 0]
}
