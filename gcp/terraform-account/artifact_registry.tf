resource "google_artifact_registry_repository" "sapkg-lib-repo" {
  repository_id = "sapkg-lib"
  location      = "europe-central2"
  project       = data.google_project.ci.project_id
  format        = "GO"
  description   = "SAPKG Library Repository"
  depends_on    = [google_project_service.artifact_registry_api]
}
