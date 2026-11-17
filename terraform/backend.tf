# Remote State configuration for EKS cluster cluster-mart
# Bucket, DynamoDB lock table and region are provided dynamically via Tekton task
# execution using `-backend-config` flags or backend configuration files.

terraform {
  backend "s3" {
    key     = "eks-clusters/cluster-mart/terraform.tfstate"
    encrypt = true
  }
}
