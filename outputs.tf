output "data_safe_compare_user_assessments_id" {
  description = "Map of id values across all data_safe_compare_user_assessments, keyed the same as var.data_safe_compare_user_assessments except keys with no id are omitted"
  value       = { for k, v in oci_data_safe_compare_user_assessment.data_safe_compare_user_assessments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "data_safe_compare_user_assessments_comparison_user_assessment_id" {
  description = "Map of comparison_user_assessment_id values across all data_safe_compare_user_assessments, keyed the same as var.data_safe_compare_user_assessments except keys with no comparison_user_assessment_id are omitted"
  value       = { for k, v in oci_data_safe_compare_user_assessment.data_safe_compare_user_assessments : k => v.comparison_user_assessment_id if v.comparison_user_assessment_id != null && length(v.comparison_user_assessment_id) > 0 }
}
output "data_safe_compare_user_assessments_user_assessment_id" {
  description = "Map of user_assessment_id values across all data_safe_compare_user_assessments, keyed the same as var.data_safe_compare_user_assessments except keys with no user_assessment_id are omitted"
  value       = { for k, v in oci_data_safe_compare_user_assessment.data_safe_compare_user_assessments : k => v.user_assessment_id if v.user_assessment_id != null && length(v.user_assessment_id) > 0 }
}

