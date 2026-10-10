output "ecr_repository_creation_templates_id" {
  description = "Map of id values across all ecr_repository_creation_templates, keyed the same as var.ecr_repository_creation_templates"
  value       = { for k, v in aws_ecr_repository_creation_template.ecr_repository_creation_templates : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ecr_repository_creation_templates_applied_for" {
  description = "Map of applied_for values across all ecr_repository_creation_templates, keyed the same as var.ecr_repository_creation_templates"
  value       = { for k, v in aws_ecr_repository_creation_template.ecr_repository_creation_templates : k => v.applied_for if v.applied_for != null && length(v.applied_for) > 0 }
}
output "ecr_repository_creation_templates_custom_role_arn" {
  description = "Map of custom_role_arn values across all ecr_repository_creation_templates, keyed the same as var.ecr_repository_creation_templates"
  value       = { for k, v in aws_ecr_repository_creation_template.ecr_repository_creation_templates : k => v.custom_role_arn if v.custom_role_arn != null && length(v.custom_role_arn) > 0 }
}
output "ecr_repository_creation_templates_description" {
  description = "Map of description values across all ecr_repository_creation_templates, keyed the same as var.ecr_repository_creation_templates"
  value       = { for k, v in aws_ecr_repository_creation_template.ecr_repository_creation_templates : k => v.description if v.description != null && length(v.description) > 0 }
}
output "ecr_repository_creation_templates_encryption_configuration" {
  description = "Map of encryption_configuration values across all ecr_repository_creation_templates, keyed the same as var.ecr_repository_creation_templates"
  value       = { for k, v in aws_ecr_repository_creation_template.ecr_repository_creation_templates : k => v.encryption_configuration if v.encryption_configuration != null && length(v.encryption_configuration) > 0 }
}
output "ecr_repository_creation_templates_image_tag_mutability" {
  description = "Map of image_tag_mutability values across all ecr_repository_creation_templates, keyed the same as var.ecr_repository_creation_templates"
  value       = { for k, v in aws_ecr_repository_creation_template.ecr_repository_creation_templates : k => v.image_tag_mutability if v.image_tag_mutability != null && length(v.image_tag_mutability) > 0 }
}
output "ecr_repository_creation_templates_image_tag_mutability_exclusion_filter" {
  description = "Map of image_tag_mutability_exclusion_filter values across all ecr_repository_creation_templates, keyed the same as var.ecr_repository_creation_templates"
  value       = { for k, v in aws_ecr_repository_creation_template.ecr_repository_creation_templates : k => v.image_tag_mutability_exclusion_filter if v.image_tag_mutability_exclusion_filter != null && length(v.image_tag_mutability_exclusion_filter) > 0 }
}
output "ecr_repository_creation_templates_lifecycle_policy" {
  description = "Map of lifecycle_policy values across all ecr_repository_creation_templates, keyed the same as var.ecr_repository_creation_templates"
  value       = { for k, v in aws_ecr_repository_creation_template.ecr_repository_creation_templates : k => v.lifecycle_policy if v.lifecycle_policy != null && length(v.lifecycle_policy) > 0 }
}
output "ecr_repository_creation_templates_prefix" {
  description = "Map of prefix values across all ecr_repository_creation_templates, keyed the same as var.ecr_repository_creation_templates"
  value       = { for k, v in aws_ecr_repository_creation_template.ecr_repository_creation_templates : k => v.prefix if v.prefix != null && length(v.prefix) > 0 }
}
output "ecr_repository_creation_templates_region" {
  description = "Map of region values across all ecr_repository_creation_templates, keyed the same as var.ecr_repository_creation_templates"
  value       = { for k, v in aws_ecr_repository_creation_template.ecr_repository_creation_templates : k => v.region if v.region != null && length(v.region) > 0 }
}
output "ecr_repository_creation_templates_registry_id" {
  description = "Map of registry_id values across all ecr_repository_creation_templates, keyed the same as var.ecr_repository_creation_templates"
  value       = { for k, v in aws_ecr_repository_creation_template.ecr_repository_creation_templates : k => v.registry_id if v.registry_id != null && length(v.registry_id) > 0 }
}
output "ecr_repository_creation_templates_repository_policy" {
  description = "Map of repository_policy values across all ecr_repository_creation_templates, keyed the same as var.ecr_repository_creation_templates"
  value       = { for k, v in aws_ecr_repository_creation_template.ecr_repository_creation_templates : k => v.repository_policy if v.repository_policy != null && length(v.repository_policy) > 0 }
}
output "ecr_repository_creation_templates_resource_tags" {
  description = "Map of resource_tags values across all ecr_repository_creation_templates, keyed the same as var.ecr_repository_creation_templates"
  value       = { for k, v in aws_ecr_repository_creation_template.ecr_repository_creation_templates : k => v.resource_tags if v.resource_tags != null && length(v.resource_tags) > 0 }
}

