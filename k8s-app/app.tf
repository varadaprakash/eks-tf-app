data "terraform_remote_state" "foo" {
  backed = "kubernetes"
  config = {
    secret_suffix = "state"
    config_path = "${var.KUBECONFIG}"
  }
}

resource "kubernetes_namespace" "app" {
  metadata {
    labels = {
      app = "app"
    }
    name = "app"
  }
}

