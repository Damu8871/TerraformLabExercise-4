provider "aws" {
	region = "ap-south-1"
}

terraform {

	backend "s3" {
		bucket = "test-statefile-tf-1"
		key    = "test-tf-statefile"
		region = "ap-south-1"
	}

}

module "rds" {
	source = "modules/rds"
}

module "ec2-wordpress" {
	source = "modules/ec2-wordpress-apache"
}

module "elb" {
	source = "modules/elb"
	instance-id = "${module.ec2-wordpress.instance-id}"
}
