resource "google_project_service" "artifact_registry_api" {
  project = data.google_project.ci.project_id
  service = "artifactregistry.googleapis.com"
}