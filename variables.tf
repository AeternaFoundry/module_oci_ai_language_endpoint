variable "ai_language_endpoints" {
  description = <<EOT
Map of ai_language_endpoints, attributes below
Required:
    - compartment_id
    - model_id
Optional:
    - alias
    - defined_tags
    - description
    - display_name
    - freeform_tags
    - inference_units
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id  = string
    model_id        = string
    alias           = optional(string)
    defined_tags    = optional(map(string))
    description     = optional(string)
    display_name    = optional(string)
    freeform_tags   = optional(map(string))
    inference_units = optional(number)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

