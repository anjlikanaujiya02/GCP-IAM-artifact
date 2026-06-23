provider "google" {
  project = var.project_id
  region  = var.region
}

module "artifact-registry-repository-iam-bindings" {
  source  = "terraform-google-modules/iam/google//modules/artifact_registry_iam"
  version = "~> 8.2"

  project      = var.project_id
  repositories = ["my-app"]
  location     = var.region
  mode         = "additive"

  bindings = {
    "roles/artifactregistry.writer" = [
      "serviceAccount:my-app@terraform-iam-500306.iam.gserviceaccount.com",
      "user:anjlikanaujiya02@gmail.com",
    ]
  }
}
