resource "oci_data_safe_compare_user_assessment" "data_safe_compare_user_assessments" {
  for_each = var.data_safe_compare_user_assessments

  comparison_user_assessment_id = each.value.comparison_user_assessment_id
  user_assessment_id            = each.value.user_assessment_id

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

