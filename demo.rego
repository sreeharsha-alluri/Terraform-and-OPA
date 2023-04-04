package rules
deny[msg] {
  some module_name, resource_id
  input.planned_values[module_name].resources[resource_id].type == "aws_instance"
  not input.planned_values[module_name].resources[resource_id].values.tags["Contact"]
  msg := sprintf("EC2 instance %v needs a Contact tag.", [input.planned_values[module_name].resources[resource_id].name])
}
