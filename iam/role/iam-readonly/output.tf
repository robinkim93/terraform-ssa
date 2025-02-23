output "iam_readonly_profile_name" {
  description = "name of the IAM readonly profile"
  value       = aws_iam_instance_profile.iam_readonly_profile.name
}