terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "sev1-michaelkemmerer"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
