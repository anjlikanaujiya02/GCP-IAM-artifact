module "artifact-registry-repository-iam-bindings" {
  source  = "terraform-google-modules/iam/google//modules/artifact_registry_iam"
  version = "~> 8.2"

  project      = "terraform-iam-500306"
  repositories = ["my-app"]
  location     = "asia-south1"
  mode         = "additive"

  bindings = {
    "roles/artifactregistry.writer" = [
      "serviceAccount:my-app@terraform-iam-500306.iam.gserviceaccount.com",
      "user:anjlikanaujiya02@gmail.com",
    ]
  }
}
