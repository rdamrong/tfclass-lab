output "cms_info" {
  value = module.cms[*].elb_dns
}

