terraform {

  // backend "pg" {} // defines as environment variable PG_CONN_STR

  required_providers {
    sgroups = {
      source = "sgroups"
      version = "1.9.1"
    }
  }
}

provider "sgroups" {
  sgroups_address = "tcp://10.20.30.40:80" // SGROUPS_ADDRESS
  sgroups_dial_duration = "20s" // SGROUPS_DIAL_DURATION
}
