rule "terraform_naming_convention" {
  enabled = true
  format = "custom_format"

  custom_formats = {
    custom_format = {
      description = "Custom Format"
      regex       = "^[a-zA-Z][a-zA-Z0-9]*([_-][a-zA-Z0-9]+)*$"
    }
  }
}
rule "terraform_deprecated_interpolation" {
  enabled = true
}
rule "terraform_unused_declarations" {
  enabled = true
}
rule "terraform_comment_syntax" {
  enabled = true
}
rule "terraform_typed_variables" {
  enabled = true
}
rule "terraform_module_pinned_source" {
  enabled = true
}
rule "terraform_required_version" {
  enabled = true
}
rule "terraform_required_providers" {
  enabled = true
}
rule "terraform_workspace_remote" {
  enabled = true
}
