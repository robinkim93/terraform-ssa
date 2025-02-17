resource "aws_budgets_budget" "zero-spend-budget" {
  name         = "zero-spend-budget"
  budget_type  = "COST"
  time_unit    = "DAILY"
  limit_amount = 0.01
  limit_unit   = "USD"

  notification {
    comparison_operator        = "GREATER_THAN"
    threshold                  = 0
    threshold_type             = "ABSOLUTE_VALUE"
    notification_type          = "ACTUAL"
    subscriber_email_addresses = ["kal6529@gmail.com"]
  }
}