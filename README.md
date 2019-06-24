# terraform-aws-nlb
Terraform module for AWS Netwrok Load Balancer

# Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| load_balancer_name | The name of the LB | string | n/a | no |
| load_balancer_is_internal | f true, the LB will be internal. | string | n/a | no |
| load_balancer_type | The type of load balancer to create. Possible values are `application` or `network`.| string | `"application"` | no |