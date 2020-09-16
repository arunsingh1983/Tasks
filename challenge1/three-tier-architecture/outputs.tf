output "elb_dns" {
  description = "ELB DNS"
  value       = "${module.web.elb_dns}"
}

output "rds_endpoint" {
  description = "RDS endpoint"
  value       = "${module.db.rds_endpoint}"
}
