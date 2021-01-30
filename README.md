# terraform-aws-cis-cloudwatch-monitors-multiregion
A wrapper module for [terraform-aws-cis-cloudwatch-monitors](https://github.com/rhythmictech/terraform-aws-cis-cloudwatch-monitors) to configure across an arbitrary set of regions.

[![tflint](https://github.com/rhythmictech/terraform-aws-cis-cloudwatch-monitors-multiregion/workflows/tflint/badge.svg?branch=master&event=push)](https://github.com/rhythmictech/terraform-aws-cis-cloudwatch-monitors-multiregion/actions?query=workflow%3Atflint+event%3Apush+branch%3Amaster)
[![tfsec](https://github.com/rhythmictech/terraform-aws-cis-cloudwatch-monitors-multiregion/workflows/tfsec/badge.svg?branch=master&event=push)](https://github.com/rhythmictech/terraform-aws-cis-cloudwatch-monitors-multiregion/actions?query=workflow%3Atfsec+event%3Apush+branch%3Amaster)
[![yamllint](https://github.com/rhythmictech/terraform-aws-cis-cloudwatch-monitors-multiregion/workflows/yamllint/badge.svg?branch=master&event=push)](https://github.com/rhythmictech/terraform-aws-cis-cloudwatch-monitors-multiregion/actions?query=workflow%3Ayamllint+event%3Apush+branch%3Amaster)
[![misspell](https://github.com/rhythmictech/terraform-aws-cis-cloudwatch-monitors-multiregion/workflows/misspell/badge.svg?branch=master&event=push)](https://github.com/rhythmictech/terraform-aws-cis-cloudwatch-monitors-multiregion/actions?query=workflow%3Amisspell+event%3Apush+branch%3Amaster)
[![pre-commit-check](https://github.com/rhythmictech/terraform-aws-cis-cloudwatch-monitors-multiregion/workflows/pre-commit-check/badge.svg?branch=master&event=push)](https://github.com/rhythmictech/terraform-aws-cis-cloudwatch-monitors-multiregion/actions?query=workflow%3Apre-commit-check+event%3Apush+branch%3Amaster)
<a href="https://twitter.com/intent/follow?screen_name=RhythmicTech"><img src="https://img.shields.io/twitter/follow/RhythmicTech?style=social&logo=twitter" alt="follow on Twitter"></a>

## Example
Here's what using the module will look like
```hcl
module "cis-cloudwatch-monitors-multiregion" {
  source  = "rhythmictech/cis-cloudwatch-monitors-multiregion/aws"

  cloudtrail_log_group   = "cloudtrail"
  notification_topic_arn = "arn:aws:sns:us-east-1:012345678901:notify-ops"
}
```

## About
There's no good way to do arbitrary multi-region things in TF, and some things need to be arbitrarily in multiple regions. For example, your CIS CloudWatch monitors should be in any region you haven't administratively disabled. One might argue that they are even more important there.

This module will simply wrap the `terraform-aws-cis-cloudwatch-monitors` module for the regions you specify in `enabled_regions`.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13.5 |
| aws | ~> 3.8 |

## Providers

No provider.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| cloudtrail\_log\_group | ARN of the CloudWatch log group for CloudTrail | `string` | n/a | yes |
| notification\_topic\_arn | ARN of the SNS Topic to send notifications to | `string` | n/a | yes |
| enabled\_regions | Regions to enable module in | `list(string)` | <pre>[<br>  "us-east-1",<br>  "us-east-2",<br>  "us-west-1",<br>  "us-west-2",<br>  "ca-central-1",<br>  "eu-central-1",<br>  "eu-west-1",<br>  "eu-west-2",<br>  "eu-west-3",<br>  "eu-north-1",<br>  "ap-northeast-1",<br>  "ap-northeast-2",<br>  "ap-southeast-1",<br>  "ap-southeast-2",<br>  "ap-south-1",<br>  "sa-east-1"<br>]</pre> | no |
| tags | User-Defined tags | `map(string)` | `{}` | no |

## Outputs

No output.

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
