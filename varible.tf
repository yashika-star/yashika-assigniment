variable "loop" {
    type = list(any)
    default = [ {
    key               = "condition1"
    description       = "Description for condition 1"
    runbook_url       = "https://example.com/runbook1"
    nrql_query        = "SELECT average(diskUsedPercent) FROM StorageSample"
    operator          = "above"
    critical_threshold = 90
    critical_duration  = 600
    warning_threshold  = 80
    warning_duration   = 600
  },
  {
    key               = "condition2"
    description       = "Description for condition 2"
    runbook_url       = "https://example.com/runbook2"
    nrql_query        = "SELECT average(cpuPercent) FROM SystemSample"
    operator          = "below"
    critical_threshold = 60
    critical_duration  = 600
    warning_threshold  = 20
    warning_duration   = 300
  }, ]
  
}