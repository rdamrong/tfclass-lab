resource "aws_elb" "appserv" {
  name               = var.cms_name
  availability_zones = data.aws_availability_zones.available.names
  listener {
    instance_port     = 8080
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }
  instances                   = aws_instance.appserv[*].id
  cross_zone_load_balancing   = true
  idle_timeout                = 400
  connection_draining         = true
  connection_draining_timeout = 400

  tags = {
    Name = var.cms_name
  }
} 

