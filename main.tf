module "service" {
  source = "./module/ecs-service"

  cluster_name = var.cluster_name
  environment  = var.environment
  image        = "${var.registry}/ks-eci-service-example-go:${var.environment}"
  name         = "service"

  parameters = [
    "ks-public-instructor",
    "ks-public-location",
    "ks-version"
  ]
}
