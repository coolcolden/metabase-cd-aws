


module "metabase" {
  source = "./modules/ecs_alb"

  region           = "sa-east-1"
  ecs_cluster_name = "cluster02"
  # app_image          = "mendhak/http-https-echo"
  # app_container_port = 8080

  ecs_desired_capacity = 2
  ecs_max_size         = 3
  min_tasks            = 2
}


output "dns_name" {
  description = "The DNS name of the load balancer"
  value       = module.metabase.dns_name
}
