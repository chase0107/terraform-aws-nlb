resource "aws_lb" "front_end" {
  name               = "${var.load_balancer_name}"
  internal           = "${var.load_balancer_is_internal}"
  load_balancer_type = "${var.load_balancer_type}"

  vpc_id  = "${var.vpc_id}"
  subnets = ["${var.subnets}"]

  enable_deletion_protection       = "${var.enable_deletion_protection}"
  enable_cross_zone_load_balancing = "${var.enable_cross_zone_load_balancing}"

  listener_port         = "${var.listener_port}"
  listener_protocol     = "${var.listener_protocol}"
  target_group_name     = "${var.target_group_name}"
  target_group_count    = "${var.target_group_count}"
  target_group_port     = "${var.target_group_port }"
  target_group_protocol = "${var.target_group_protocol}"

  access_logs {
    bucket  = "${var.access_logs_bucket}"
    prefix  = "${var.access_logs_bucket_prefix}"
    enabled = "${var.access_logs_enabled}"
  }

  tags = "${var.tags}"
}

resource "aws_lb_listener" "front_end" {
  load_balancer_arn = "${aws_lb.front_end.arn}"
  port              = "${var.listener_port}"
  protocol          = "${var.listener_protocol}"
  ssl_policy        = "${var.ssl_policy}"
  certificate_arn   = "${var.certificate_arn}"

  default_action {
    type             = "${var.action_type}"
    target_group_arn = "${aws_lb_target_group.front_end.arn}"
    redirect         = "${var.redirect}"
    fixed_responses  = "${var.fixed_responses}"
  }
}

resource "aws_acm_certificate" "example" {
  # ...
}

resource "aws_lb_listener_certificate" "example" {
  listener_arn    = "${aws_lb_listener.front_end.arn}"
  certificate_arn = "${aws_acm_certificate.example.arn}"
}

resource "aws_lb_listener_rule" "static" {
  listener_arn = "${aws_lb_listener.front_end.arn}"
  priority     = "${var.priority}"

  action {
    type             = "${var.listener_action_type}"
    target_group_arn = "${aws_lb_target_group.static.arn}"

    redirect {
      port        = "443"
      protocol    = "HTTPS"
      status_code = "HTTP_301"
    }

    fixed_response {
      content_type = "text/plain"
      message_body = "HEALTHY"
      status_code  = "200"
    }

    authenticate_cognito {
      user_pool_arn       = "${aws_cognito_user_pool.pool.arn}"
      user_pool_client_id = "${aws_cognito_user_pool_client.client.id}"
      user_pool_domain    = "${aws_cognito_user_pool_domain.domain.domain}"
    }

    authenticate_oidc {
      authorization_endpoint = "https://example.com/authorization_endpoint"
      client_id              = "client_id"
      client_secret          = "client_secret"
      issuer                 = "https://example.com"
      token_endpoint         = "https://example.com/token_endpoint"
      user_info_endpoint     = "https://example.com/user_info_endpoint"
    }
  }

  condition {
    field  = "${var.condition_field}"
    values = ["${var.condition_value}"]
  }
}

resource "aws_lb_target_group" "front_end" {
  name                               = "${var.target_group_name}"
  name_prefix                        = "${var.target_group_prefix}"
  port                               = "${var.target_group_port}"
  protocol                           = "${var.target_group_protocol}"
  target_type                        = "${var.target_group_type}"
  vpc_id                             = "${aws_vpc.main.id}"
  deregistration_delay               = "${var.target_group_deregistration_delay}"
  slow_start                         = "${var.target_group_name}"
  lambda_multi_value_headers_enabled = "${var.lambda_headers_enabled}"
  proxy_protocol_v2                  = "${var.proxy_protocol}"

  stickiness {
    type            = "${var.stickiness_type}"
    cookie_duration = "${var.stickiness_cookie_duration}"
    enabled         = "${var.stickiness_enabled}"
  }

  health_check {
    enabled             = "${var.health_check_enabled}"
    internal            = "${var.health_check_internal}"
    path                = "${var.health_check_path}"
    pool                = "${var.health_check_pool}"
    protocol            = "${var.health_check_protocol}"
    timeout             = "${var.health_check_timeout}"
    healthy_threshold   = "${var.health_check_healthy_threshold}"
    unhealthy_threshold = "${var.health_check_unhealthy_threshold}"
    matcher             = "${var.health_check_matcher}"
  }

  target_type = "${var.target_type}"
  tags        = "${var.Ctags}"
}

resource "aws_lb_target_group_attachment" "test" {
  target_group_arn  = "${aws_lb_target_group.test.arn}"
  target_id         = "${aws_instance.test.id}"
  port              = "${var.target_group_port}"
  availability_zone = "${var.target_group_az}"
}
