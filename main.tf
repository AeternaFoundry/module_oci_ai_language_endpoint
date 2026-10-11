resource "oci_ai_language_endpoint" "ai_language_endpoints" {
  for_each = var.ai_language_endpoints

  compartment_id  = each.value.compartment_id
  model_id        = each.value.model_id
  alias           = each.value.alias
  defined_tags    = each.value.defined_tags
  description     = each.value.description
  display_name    = each.value.display_name
  freeform_tags   = each.value.freeform_tags
  inference_units = each.value.inference_units

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

