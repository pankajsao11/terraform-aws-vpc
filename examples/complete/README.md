# Complete EC2 instance

Configuration in this directory creates EC2 instances with different sets of arguments.

## Usage

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

Note that this example may create resources which can cost money. Run `terraform destroy` when you don't need these resources.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 5.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_ec2_complete"></a> [ec2\_complete](#module\_ec2\_complete) | ../../ | n/a |
| <a name="module_security_group"></a> [security\_group](#module\_security\_group) | terraform-aws-modules/security-group/aws | ~> 4.0 |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | terraform-aws-modules/vpc/aws | ~> 5.0 |

## Resources

| Name | Type |
|------|------|
| [aws_ami.Windows_Server](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |
| [aws_ami.amazon_linux](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |
| [aws_availability_zones.available](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/availability_zones) | data source |

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ec2_complete_arn"></a> [ec2\_complete\_arn](#output\_ec2\_complete\_arn) | The ARN of the instance |
| <a name="output_ec2_complete_availability_zone"></a> [ec2\_complete\_availability\_zone](#output\_ec2\_complete\_availability\_zone) | The availability zone of the created instance |
| <a name="output_ec2_complete_id"></a> [ec2\_complete\_id](#output\_ec2\_complete\_id) | The ID of the instance |
| <a name="output_ec2_complete_instance_state"></a> [ec2\_complete\_instance\_state](#output\_ec2\_complete\_instance\_state) | The state of the instance. One of: `pending`, `running`, `shutting-down`, `terminated`, `stopping`, `stopped` |
| <a name="output_ec2_complete_private_dns"></a> [ec2\_complete\_private\_dns](#output\_ec2\_complete\_private\_dns) | The private DNS name assigned to the instance. Can only be used inside the Amazon EC2, and only available if you've enabled DNS hostnames for your VPC |
| <a name="output_ec2_complete_public_dns"></a> [ec2\_complete\_public\_dns](#output\_ec2\_complete\_public\_dns) | The public DNS name assigned to the instance. For EC2-VPC, this is only available if you've enabled DNS hostnames for your VPC |
| <a name="output_ec2_complete_public_ip"></a> [ec2\_complete\_public\_ip](#output\_ec2\_complete\_public\_ip) | The public IP address assigned to the instance, if applicable. NOTE: If you are using an aws\_eip with your instance, you should refer to the EIP's address directly and not use `public_ip` as this field will change after the EIP is attached |
| <a name="output_ec2_complete_tags_all"></a> [ec2\_complete\_tags\_all](#output\_ec2\_complete\_tags\_all) | A map of tags assigned to the resource, including those inherited from the provider default\_tags configuration block |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
