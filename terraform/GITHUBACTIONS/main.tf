terraform {
  cloud {
    organization = "acme-pedro-molina"

    workspaces {
      name = "acme-pedro-molina"
    }
  }
}
