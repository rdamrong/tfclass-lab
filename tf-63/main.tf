provider "aws" {
  region = "ap-southeast-1"
}
module "sec" {
  source = "./security"
}
module "cms" {
   count = 2
    source            = "./cms"
   cms_name          = format("app%d-%d",0,count.index)
  security_group_id = module.sec.security_group_id
}
