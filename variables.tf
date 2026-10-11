variable "data_safe_compare_user_assessments" {
  description = <<EOT
Map of data_safe_compare_user_assessments, attributes below
Required:
    - comparison_user_assessment_id
    - user_assessment_id
Optional:
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    comparison_user_assessment_id = string
    user_assessment_id            = string
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

