resource "newrelic_alert_policy" "yashika_nrql" {
  name = "Yashika"
}

resource "newrelic_nrql_alert_condition" "yashikacondition" {
 count=length(var.loop)
  account_id                     = 4268611
  policy_id                      = newrelic_alert_policy.yashika_nrql.id
 name                           = var.loop[count.index].key
  description                    = var.loop[count.index].description
  runbook_url                    = var.loop[count.index].runbook_url

  nrql {
    query = var.loop[count.index].nrql_query
  }

  critical {
    operator              = var.loop[count.index].operator
    threshold             = var.loop[count.index].critical_threshold
    threshold_duration    = var.loop[count.index].critical_duration
    threshold_occurrences = "ALL"
  }

  warning {
    operator              = var.loop[count.index].operator
    threshold             = var.loop[count.index].warning_threshold
    threshold_duration    = var.loop[count.index].warning_duration
    threshold_occurrences = "ALL"
  }
}