terraform {
  cloud {
    organization = "CogDisResLab"

    workspaces {
      name = "clinical_proteomics"
    }
  }
}