resource "aws_elb" "wordpress_elb" {
  name = "Wordpress-LB"
  internal = false
  security_groups = ["${var.lb_sg}"]
  subnets = ["${var.subnet-ids}"]
  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }
  health_check {    
    healthy_threshold   = 10    
    unhealthy_threshold = 2    
    timeout             = 5       
    interval            = 10 
    target              = "HTTP:80/wordpress/index.php"    
  }
  instances = ["${var.instance-id}"]

}
