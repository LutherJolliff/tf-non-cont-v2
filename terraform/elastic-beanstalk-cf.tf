resource "aws_elastic_beanstalk_application" "elastic-bean-app" {
  name        = "${var.eb-app-name}"
  description = ""
}

resource "aws_elastic_beanstalk_environment" "elastic-bean-env" {
  name                = "${var.eb-env-name}"
  application         = "${aws_elastic_beanstalk_application.elastic-bean-app.name}"
  solution_stack_name = "64bit Amazon Linux 2018.03 v4.9.2 running Node.js"
}
