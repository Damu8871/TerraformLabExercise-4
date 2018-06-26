output "elb_dns" {
        value = "${aws_elb.wordpress_elb.dns_name}"
}
