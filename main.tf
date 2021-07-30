
module "aws-eks" {
  source = "./modules/terrafor-aws-eks/examples/basic"
}

module "k8s-app" {
  KUBECONFIG = "/home/varada/.kube/${module.aws-eks.eks_cluster_name}"
  source = "./modules/k8s-app"
}

