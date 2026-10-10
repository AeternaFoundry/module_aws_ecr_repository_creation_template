variable "ecr_repository_creation_templates" {
  description = <<EOT
Map of ecr_repository_creation_templates, attributes below
Required:
    - applied_for
    - prefix
Optional:
    - custom_role_arn
    - description
    - image_tag_mutability
    - lifecycle_policy
    - region
    - repository_policy
    - resource_tags
    - encryption_configuration (block):
        - encryption_type (optional)
        - kms_key (optional)
    - image_tag_mutability_exclusion_filter (block):
        - filter (required)
        - filter_type (required)
EOT

  type = map(object({
    applied_for          = set(string)
    prefix               = string
    custom_role_arn      = optional(string)
    description          = optional(string)
    image_tag_mutability = optional(string)
    lifecycle_policy     = optional(string)
    region               = optional(string)
    repository_policy    = optional(string)
    resource_tags        = optional(map(string))
    encryption_configuration = optional(list(object({
      encryption_type = optional(string)
      kms_key         = optional(string)
    })))
    image_tag_mutability_exclusion_filter = optional(list(object({
      filter      = string
      filter_type = string
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.ecr_repository_creation_templates : (
        v.image_tag_mutability_exclusion_filter == null || (length(v.image_tag_mutability_exclusion_filter) <= 5)
      )
    ])
    error_message = "Each image_tag_mutability_exclusion_filter list must contain at most 5 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.ecr_repository_creation_templates : (
        v.lifecycle_policy == null || (can(jsondecode(v.lifecycle_policy)))
      )
    ])
    error_message = "must be valid JSON"
  }
  # Note: 8 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

