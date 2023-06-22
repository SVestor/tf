module "gke_cluster" {
  source           = "github.com/SVestor/tf-google-gke-cluster"
  GOOGLE_REGION    = var.GOOGLE_REGION
  GOOGLE_PROJECT   = var.GOOGLE_PROJECT
  GKE_NUM_NODES    = 2
  GKE_CLUSTER_NAME = var.GKE_CLUSTER_NAME
  GKE_MACHINE_TYPE = var.GKE_MACHINE_TYPE
}

terraform {
  backend "gcs" {
    bucket = "terraform-k8s-k3s-881"
    prefix = "terraform/state"
  }
}