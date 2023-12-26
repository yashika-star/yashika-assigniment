terraform {
  required_version = "~> 1.0"
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
    }
  }
}

# Configure the New Relic provider
provider "newrelic" {
  account_id = 4268611
  api_key = "NRAK-ZM2D8TXP6O8JTDLT1UNMPD8T16N"    # usually prefixed with 'NRAK'
  region = "US"                    # Valid regions are US and EU
}